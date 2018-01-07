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
#define N_CYCLES 10

// number of pulses per "blink" in config mode, higher = brighter blinks
#define N_PULSES 10

// year run-times and corresponding PWM periods
#define N_MODES 10
struct run_time
{
  uint8_t years;       // number of years of run-time or mode number
  uint16_t pwm_period; // PWM period (in units of 1/31000 s)
};

// Note: frequencies converted to pwm periods
const struct run_time period_table[N_MODES] =
  {{1, (int)(31000./325.65 + 0.5)},
   {2, (int)(31000./154.68 + 0.5)},
   {3, (int)(31000./97.69 + 0.5)},
   {4, (int)(31000./69.2 + 0.5)},
   {5, (int)(31000./52.1 + 0.5)},
   {6, (int)(31000./40.7 + 0.5)},
   {7, (int)(31000./32.56 + 0.5)},
   {8, (int)(31000./26.45 + 0.5)},
   {9, (int)(31000./21.7 + 0.5)},
   {10, (int)(31000./17.9 + 0.5)}
  };

// default mode index 
#define DEFAULT_MODE_IDX 1

//
// ======= end of configurable parameters =======
//

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
  return PMDAT % N_MODES;
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

void start_pwm(uint16_t mode_idx)
{
  APFCON     = 0b00000011;    // select PWM1 on RA5, PWM2 on RA4
  PWM2OFCON  = 0b00100001;    // PWM2 triggered with PWM1
  PWM1PH     = PHASE1;
  PWM2PH     = PHASE2;
  PWM1DC     = DUTY_CYCLE1;
  PWM2DC     = DUTY_CYCLE2;
  PWM1PR     = period_table[mode_idx].pwm_period;
  PWM2PR     = period_table[mode_idx].pwm_period;
  PWM1OF     = OFFSET_COUNT;
  PWMLD      = 0b00000011;
  PWM2CLKCON = 0b00000010;
  PWM1CLKCON = 0b00000010;
  PWM1OFCON  = 0b00000000;
  PWM1CON    = 0b11010000;
  PWM2CON    = 0b11000000;
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

int main(int argc, char** argv) {
  // selected run-time mode index
  uint16_t mode_idx;

  mode_idx = read_mode_idx(); // get current mode from high-endurance flash
  setup();
  
  // enter run-time selection mode on power-on reset
  if (!nPOR){
    uint16_t timeout_count;
    uint16_t cycle;

    mode_idx = DEFAULT_MODE_IDX;
    IOCAN      = 0b001000;      // flag negative RA3 edge detections
    WDTCONbits.WDTPS = 0b01001; // 512ms timeout for blinks  
    
    for (cycle = 0; cycle < N_CYCLES; ++cycle){
      for (timeout_count = 0; timeout_count < period_table[mode_idx].years + 3;
           ++timeout_count){
        // if button press was detected, increment mode
        if (IOCAF3){
          cycle--;
          mode_idx = (mode_idx + 1) % N_MODES;
          SLEEP();
          SLEEP();
          IOCAF3 = 0;
          break;
        }
        if (timeout_count < period_table[mode_idx].years){
          pulse(N_PULSES);
        }
        SLEEP();
      }
    }
    write_mode_idx(mode_idx);   // store selected mode to high-endurance flash
  }

  // exit run-time selection mode
  nPOR = 1;                   // exit startup mode
  WDTCONbits.WDTPS = 0b10010; // 256s WDT timeout to wake and refresh RAM    
  start_pwm(mode_idx);
  SLEEP();                    // PWMs run in sleep, pulsing LED
  RESET();                    // on WDT timeout, reset processor to refresh RAM
}

