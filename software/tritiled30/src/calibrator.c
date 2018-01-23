/*
 * calibrator.c
 * Brightness/current calibrator for TritiLED V3.x
 *
 * Copyright (C) 2018 Theodore C. Yapo
 * Released under MIT License (see file)
 *
 */
#include <xc.h>
#include <pic12lf1571.h>
#include <stdint.h>

//------------
// confiurable parameters
#define N_MODES 3
const uint16_t pwm_periods[N_MODES] = {
  (uint16_t)(31000.f / 100.f),
  (uint16_t)(31000.f / 200.f),
  (uint16_t)(31000.f / 400.f)
};
//------------

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

// fixed PWM parameters
#define PHASE1       0
#define PHASE2       0
#define DUTY_CYCLE1  2
#define DUTY_CYCLE2  1
#define OFFSET_COUNT 1

void setup()
{
  ANSELA     = 0b00000000; // all digital I/O
  LATA       = 0b00100000; // clear all except RA5
  TRISA      = 0b00001000; // all RAx outputs except RA3
  INLVLA3    = 1;          // ST input for RA3
  nWPUEN     = 0;          // enable weak pull-ups
  WPUA       = 0b00001000; // WPU on RA3
}

void start_pwm(uint16_t pwm_period)
{
  APFCON     = 0b00000011;    // select PWM1 on RA5, PWM2 on RA4
  PWM2OFCON  = 0b00100001;    // PWM2 triggered with PWM1
  PWM1PR     = pwm_period;
  PWM2PR     = pwm_period;
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

int main(int argc, char** argv)
{  
  setup();
  while(1){
    uint8_t i;
    for (i = 0; i < N_MODES; ++i){
      start_pwm(pwm_periods[i]);
      WDTCONbits.WDTPS = 0b01110;
      SLEEP();
    }
  }
}

