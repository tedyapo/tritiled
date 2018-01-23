/*
 * tririled_v30_slectable_runtime.c
 * Multi-year LED glow marker with selectable runtime
 *
 * Copyright (C) 2018 Theodore C. Yapo
 * Released under MIT License (see file)
 *
 */
#include <xc.h>
#include <pic12lf1571.h>
#include <stdint.h>

//
// ======== configrable parameters =========
//

// number of cyles of blinks to show before exiting config mode
#define N_CYCLES 3

// number of pulses per "blink" in config mode, higher = brighter blinks
#define N_PULSES 15

// default mode index 
#define DEFAULT_MODE_IDX 0

//
// ======= end of configurable parameters =======
//

struct run_time
{
  uint8_t years;       // number of years of run-time or mode number
  uint16_t pwm_period; // PWM period (in units of 1/31000 s)
};
#include "modes.h"

// CONFIG1
#pragma config FOSC = INTOSC    // (INTOSC oscillator; I/O function on CLKIN pin)
#pragma config WDTE = ON        // Watchdog Timer Enable (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = OFF      // MCLR Pin Function Select (MCLR/VPP pin function is digital input)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable (Brown-out Reset disabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)

// CONFIG2
#pragma config WRT = HALF       // Flash Memory Self-Write Protection (000h to 1FFh write protected, 200h to 3FFh may be modified by EECON control)
#pragma config PLLEN = OFF      // PLL Enable (4x PLL disabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LPBOREN = OFF    // Low Power Brown-out Reset enable bit (LPBOR is disabled)
#pragma config LVP = OFF        // Low-Voltage Programming Enable (High-voltage on MCLR/VPP must be used for programming)

// last location of high-endurance flash
#define HEF_END 0x03ff
#define FLASH_PAGE_SIZE 16

// address in HEF for mode_idx var 0x03ff - 15 = 0x03f0
// note: this is 16 locations at the end of the HEF section
//       hard-coded because compiler won't fold constants in __at()
//       declaration below
#define MODE_IDX_ADDR 0x03f0

// reserve space for mode_idx in HEF (not accessed through this)
// NB: we have to reserve a whole page, so no code gets placed there,
//     because we have to erase a page at a time
const uint8_t mode_idx_placeholder[FLASH_PAGE_SIZE] __at(MODE_IDX_ADDR) = {0};

// fixed PWM parameters
#define PHASE1       0
#define PHASE2       0
#define DUTY_CYCLE1  2
#define DUTY_CYCLE2  1
#define OFFSET_COUNT 1

// declare ASM helper function for reading from flash
extern void read_hef(void);
#pragma regsused read_hef wreg status bsr

// read the mode_idx var from HEF program space
uint16_t read_mode_idx()
{
  PMADR = MODE_IDX_ADDR;
  read_hef();
  uint16_t value = PMDAT;
  while (value > N_MODES){
    value -= N_MODES;
  }
  return value;
}

// declare ASM helper function for writing to flash
extern void unlock_hef(void);
#pragma regsused unlock_hef wreg status bsr

// write the mode_idx var in HEF program space
//  note: this writes an entire row, destroying everything but mode_idx at the beginning
void write_mode_idx(uint16_t new_idx)
{
  // erase row containing mode_idx
  PMADR = MODE_IDX_ADDR;
  CFGS = 0;
  FREE = 1;
  WREN = 1;
  unlock_hef();

  // write mode_idx
  WREN = 1;
  CFGS = 0;
  LWLO = 0;
  PMADR = MODE_IDX_ADDR;
  PMDAT = new_idx;
  unlock_hef();
  
  // disable writes
  WREN = 0;
}

void setup()
{
  ANSELA     = 0b00000000; // all digital I/O
  LATA       = 0b00100000; // clear all except RA5
  TRISA      = 0b00001000; // all RAx outputs except RA3
  INLVLA3    = 1;          // ST input for RA3
  nWPUEN     = 0;          // enable weak pull-ups
  WPUA       = 0b00001000; // WPU on RA3
}

void start_pwm(uint8_t mode_idx)
{
  APFCON     = 0b00000011;    // select PWM1 on RA5, PWM2 on RA4
  PWM2OFCON  = 0b00100001;    // PWM2 triggered with PWM1
  PWM1PR     = period_table[mode_idx].pwm_period;
  PWM2PR     = period_table[mode_idx].pwm_period;
  PWM1PH     = PHASE1;
  PWM2PH     = PHASE2;
  PWM1DC     = DUTY_CYCLE1;
  PWM2DC     = DUTY_CYCLE2;
  PWM1OF     = OFFSET_COUNT;
  PWMLD      = 0b00000011;
  PWM2CLKCON = 0b00000010;
  PWM1CLKCON = 0b00000010;
  PWM1OFCON  = 0b00000000;
  PWM1CON    = 0b11010000;
  PWM2CON    = 0b11000000;

}

void stop_pwm()
{
  APFCON     = 0b00000000;    // RA4, RA5 normal GPIO
}

// pulse quickly a number of times to make a bright blink
void pulse(uint8_t length)
{
  while (length--){
    LATA5 = 0;         // enable power to 74LVC1G123
    LATA4 = 1;         // trigger pulse
    LATA = 0b00100000; // disable power to 74LVC1G123, remove trigger
  }
}

int main(int argc, char** argv)
{
  // selected run-time mode index
  uint8_t mode_idx;

  mode_idx = read_mode_idx(); // get current mode from high-endurance flash
  setup();
  
  // enter run-time selection mode on power-on reset
  if (!nPOR){
    uint8_t cycle = N_CYCLES;

    mode_idx = DEFAULT_MODE_IDX;
    IOCAN      = 0b001000;      // flag negative RA3 edge detections

    do {
      IOCIE = 1; // enable IOC interrupts, but just wake from sleep (GIE=0)
      start_pwm(mode_idx);  // preview brightness
      WDTCONbits.WDTPS = 0b01100; // 4s timeout for brightness preview
      SLEEP();
      if (IOCAF3){
        IOCIE = 0; // disable IOC interrupts; don't wake during debounce
        WDTCONbits.WDTPS = 0b00110; // 64ms timeout for switch debounce
        SLEEP();    // debounce switch
        IOCAF3 = 0; // discard any switch bounce
        IOCIE = 1; // enable IOC interrupts for wake
        // switch must be released to count
        if (!RA3){
          mode_idx++;
          if (mode_idx == N_MODES){
            mode_idx = 0;
          }
          cycle = N_CYCLES;
        }
      } else {
        // blink out years of runtime
        cycle--;
        uint8_t blink_count;
        IOCIE = 0; // disable IOC interrupts; don't wake during blinks
        stop_pwm();
        WDTCONbits.WDTPS = 0b01001; // 512ms timeout for blinks
        SLEEP();
        for (blink_count = 0;
             blink_count < period_table[mode_idx].years;
             ++blink_count){
          pulse(N_PULSES);
          SLEEP();
        }
      }
    } while (cycle > 0);
    IOCIE = 0; // disable IOC interrupts
    IOCAN = 0b000000;      // disable negative RA3 edge detections
    write_mode_idx(mode_idx);   // store selected mode to high-endurance flash
  }

  // exit run-time selection mode
  nPOR = 1;                   // exit startup mode
  WDTCONbits.WDTPS = 0b10010; // 256s WDT timeout to wake and refresh RAM    
  start_pwm(mode_idx);
  SLEEP();                    // PWMs run in sleep, pulsing LED
  RESET();                    // on WDT timeout, reset processor to refresh RAM
}

