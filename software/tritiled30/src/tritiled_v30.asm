;;;
;;; tritiled_v30.asm:
;;;    PIC12LF1571 code for CR2032-powered LED glow marker
;;;
;;;  20171227 TCY

    LIST        P=12LF1571
 #include    <p12lf1571.inc>

;;;
;;; adjustable pulse frequency parameter
;;; 
FREQ            equ .157


;;; calculated and fixed parameters
PHASE1          equ .0
PHASE2          equ .0
DUTY_CYCLE1     equ .2
DUTY_CYCLE2     equ .1
OFFSET_COUNT    equ .1
PERIOD_COUNT    equ (.31000 / FREQ)
  
  ERRORLEVEL -302
  ERRORLEVEL -305
  ERRORLEVEL -207

  __CONFIG  _CONFIG1, _FOSC_INTOSC & _WDTE_ON & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _BOREN_OFF & _CLKOUTEN_OFF
  __CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_HI & _LPBOREN_OFF & _LVP_ON


  ORG     0
RESET_VEC:
  nop
  nop
  nop
  nop
INTERRUPT_VEC:
  BANKSEL   ANSELA
  movlw     b'00000000'     ; all digital I/O
  movwf     ANSELA

  BANKSEL   LATA
  clrf      LATA

  BANKSEL   TRISA
  clrf      TRISA           ; set all lines as outputs

  BANKSEL   WDTCON
  movlw     b'00100101'     ; WDT 256s timeout
  movwf     WDTCON

  BANKSEL   APFCON
  movlw     b'00000011'
  movwf     APFCON

  BANKSEL   PWM1CON
  movlw     b'00100001'    ; PWM2 triggered with PWM1
  movwf     PWM2OFCON

  movlw     HIGH(PHASE1)
  movwf     PWM1PHH
  movlw     LOW(PHASE1)
  movwf     PWM1PHL

  movlw     HIGH(PHASE2)
  movwf     PWM2PHH
  movlw     LOW(PHASE2)
  movwf     PWM2PHL

  movlw     HIGH(DUTY_CYCLE1)
  movwf     PWM1DCH
  movlw     LOW(DUTY_CYCLE1)
  movwf     PWM1DCL

  movlw     HIGH(DUTY_CYCLE2)
  movwf     PWM2DCH
  movlw     LOW(DUTY_CYCLE2)
  movwf     PWM2DCL

  movlw     HIGH(PERIOD_COUNT)
  movwf     PWM1PRH
  movlw     LOW(PERIOD_COUNT)
  movwf     PWM1PRL

  movlw     HIGH(PERIOD_COUNT)
  movwf     PWM2PRH
  movlw     LOW(PERIOD_COUNT)
  movwf     PWM2PRL

  movlw     HIGH(OFFSET_COUNT)
  movwf     PWM1OFH
  movlw     LOW(OFFSET_COUNT)
  movwf     PWM1OFL

  movlw     b'00000011'
  movwf     PWMLD

  movlw     b'00000010'
  movwf     PWM2CLKCON
  movlw     b'00000010'
  movwf     PWM1CLKCON

  movlw     b'00000000'
  movwf     PWM1OFCON

  movlw     b'11010000'
  movwf     PWM1CON
  movlw     b'11000000'
  movwf     PWM2CON

  sleep  ; halt here - PWM generates pulses
  reset

  ;; fill remainder of program memory with reset instructions
  fill      (reset), 0x03fe-$
  END
