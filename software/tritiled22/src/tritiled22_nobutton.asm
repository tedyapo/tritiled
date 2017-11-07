;;;
;;; tritiled22_nobutton.asm : PIC12F1571 code for CRxxxx LED glow marker
;;;
;;;   16ms flash period reduces flicker
;;;   2 pulses per loop increases brightness
;;;   resets PIC every 256 flashes to re-initialize RAM values
;;;
;;;  estimated run-times:
;;;  CR2032 (220 mAh): 2 years
;;;  CR2354 (560 mAh): 5 years
;;;  CR2477 (1000 mAh): 10 years
;;; 
    
    LIST        P=12LF1571
 #include    <p12lf1571.inc>
  
  ERRORLEVEL -302
  
;;;
;;; OSCTUNE_VAL: set to fine-tune current draw for compensating for
;;;              component tolerances
;;;   -.32 = slowest frequency (highest LED power)
;;;   .0 = factory-calibrated frequency
;;;   +.31 = highest frequency (lowest LED power)
OSCTUNE_VAL  equ   +.31

;;; 
;;; I/O pin configuration
;;;
GATE_DRIVE_A  equ   4
GATE_DRIVE_B  equ   5  

  __CONFIG  _CONFIG1, _FOSC_INTOSC & _WDTE_ON & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _BOREN_OFF & _CLKOUTEN_OFF
  __CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_HI & _LPBOREN_OFF & _LVP_ON

;;;
;;; variables in Common RAM (accessable from all banks)
;;;
  CBLOCK 0x70
    reset_counter
  ENDC
  
  ORG     0
RESET_VEC:
  movlw     .255
  movwf     reset_counter

  BANKSEL   OSCTUNE
  movlw     OSCTUNE_VAL & 0x3f
  movwf     OSCTUNE

  BANKSEL   ANSELA
  movlw     b'00000000'     ; all digital I/O
  movwf     ANSELA

  BANKSEL   LATA
  clrf      LATA
  
  BANKSEL   TRISA
  ;; set gate driver lines as output
  movlw     ((0xff ^ (1 << GATE_DRIVE_A)) ^ (1 << GATE_DRIVE_B))
  movwf     TRISA

  BANKSEL   OSCCON
  movlw     b'00111011'      ; 500 kHz MF osc
  movwf     OSCCON

  BANKSEL   WDTCON
  movlw     b'00001001'     ; WDT 16ms timeout
  movwf     WDTCON        

  BANKSEL   LATA
  movlw     (1 << GATE_DRIVE_A) | (1 << GATE_DRIVE_B)
    
MAIN_LOOP:
  movwf     LATA              ;start inductor ramp-up
  clrf      LATA              ;end inductor ramp-up
  nop
  nop
  movwf     LATA              ;start inductor ramp-up
  clrf      LATA              ;end inductor ramp-up
  sleep
  decfsz    reset_counter
  goto      MAIN_LOOP
  reset

  ;; fill remainder of program memory with reset instructions
  fill      (reset), 0x0400-$
  
  END
