;;;
;;; tritiled22_full.asm : PIC12F1571 code for CR2032-powered LED glow marker
;;;
;;;   full-feature version with selectable blinking modes
;;;   approximately 2.5-year run-time on CR2032 cell with these settings
    
    LIST        P=12LF1571
 #include    <p12lf1571.inc>
  ERRORLEVEL -305
  ERRORLEVEL -302  
  ERRORLEVEL -207
  
;;;
;;; N: number of base LED pulses per wake-up
;;; 
N            equ   .2

;;;
;;; OSCTUNE_VAL: set to fine-tune current draw for compensating for
;;;              component tolerances
;;;   -.32 = slowest frequency (highest LED power)
;;;   .0 = factory-calibrated frequency
;;;   +.31 = highest frequency (lowest LED power)
OSCTUNE_VAL  equ   0
  
;;; BASE_TIMEOUT: ms between pulses (16/32)
;;;   32 ms -> 31.5 Hz blink rate (very visible)
;;;   16 ms -> 62.5 Hz blink rate (less visible) 
BASE_TIMEOUT equ    16

;;; 
;;; I/O pin configuration
;;; 
MODE_BIT      equ   2
GATE_DRIVE_A  equ   4
GATE_DRIVE_B  equ   5  
  
#if BASE_TIMEOUT == 16  
  GLOW_PULSES  equ   .1 * N
  FAST_PULSES  equ   .8 * N
  SLOW_PULSES  equ   .64 * N
#else
  GLOW_PULSES  equ   .1 * N
  FAST_PULSES  equ   .4 * N
  SLOW_PULSES  equ   .32 * N
#endif
  
  __CONFIG  _CONFIG1, _FOSC_INTOSC & _WDTE_ON & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _BOREN_OFF & _CLKOUTEN_OFF
  __CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_HI & _LPBOREN_OFF & _LVP_ON

;;;
;;; variables in Common RAM (accessable from all banks)
;;; 
  CBLOCK 0x70
    n_pulses_H
    n_pulses_L    
    pulse_count_H 
    pulse_count_L
    loop_counter    
    debounce_ticks
    debounce_count
    in_debounce
    current_mode
    restart_count
  ENDC

  ORG     0
RESET_VEC:
  clrf      debounce_count
  clrf      in_debounce    
  clrf      current_mode
  call      INIT_GLOW_MODE    
RESTART:   
  BANKSEL   OSCTUNE
  movlw     OSCTUNE_VAL
  movwf     OSCTUNE

  BANKSEL   OSCCON
  movlw     b'00111011'       ; 500 kHz MF osc    
  movwf     OSCCON
  
  BANKSEL   ANSELA
  movlw     b'00000000'     ; all digital I/O
  movwf     ANSELA

  BANKSEL   WPUA
  movlw     (1 << MODE_BIT)     ; weak pull-up on mode button
  movwf     WPUA

  ;; enable pull-ups
  BANKSEL   OPTION_REG
  bcf       OPTION_REG, NOT_WPUEN
    
  BANKSEL   LATA
  clrf      LATA
    
  BANKSEL   TRISA
  ;; set gate driver lines as output
  movlw     ((0xff ^ (1 << GATE_DRIVE_A)) ^ (1 << GATE_DRIVE_B))
  movwf     TRISA

  movlw     .255
  movwf     restart_count
MAIN_LOOP:
  btfss     in_debounce, 0
  goto      NOT_IN_DEBOUNCE
  bcf       in_debounce, 0    
  decfsz    debounce_count
  bsf       in_debounce, 0
  goto      OSC_WAIT
    
NOT_IN_DEBOUNCE:
  BANKSEL   PORTA
  btfsc     PORTA, MODE_BIT
  goto      OSC_WAIT
  movf      debounce_ticks, W
  movwf     debounce_count
  bsf       in_debounce, 0

  incf      current_mode, W
  andlw     0x03  
  movwf     current_mode
  
  addwf     PCL
  goto      START_GLOW_MODE
  goto      START_FAST_MODE
  goto      START_SLOW_MODE
  clrf      current_mode        ; return to glow mode on 4th selection

START_GLOW_MODE:    
  call      INIT_GLOW_MODE
  goto      OSC_WAIT
START_FAST_MODE:  
  call      INIT_FAST_MODE
  goto      OSC_WAIT
START_SLOW_MODE:
  call      INIT_SLOW_MODE
  goto      OSC_WAIT

OSC_WAIT:   
  BANKSEL   OSCSTAT
  btfss     OSCSTAT, MFIOFR   ; check for osc ready
  goto      OSC_WAIT          ; spin here until osc ready
  
  ;; set up pulse counters
  movf      n_pulses_H, W
  movwf     pulse_count_H    
  banksel   LATA
    
PULSE_LOOP_H:
  movf      n_pulses_L, W
  movwf     pulse_count_L
  movlw     (1 << GATE_DRIVE_A) | (1 << GATE_DRIVE_B)
PULSE_LOOP_L:
  movwf     LATA              ;start inductor ramp-up
  clrf      LATA              ;end inductor ramp-up
  nop
  decfsz    pulse_count_L
  goto      PULSE_LOOP_L
  decfsz    pulse_count_H
  goto      PULSE_LOOP_H
    
  sleep
  decfsz    restart_count
  goto      MAIN_LOOP
  goto      RESTART
    
INIT_GLOW_MODE:
  movlw     HIGH(GLOW_PULSES)
  movwf     n_pulses_H
  incf      n_pulses_H
  movlw     LOW(GLOW_PULSES)
  movwf     n_pulses_L
  movlw     .20
  movwf     debounce_ticks
  movwf     debounce_count
  BANKSEL   WDTCON
#if BASE_TIMEOUT == 16
  movlw     b'00001001'     ; WDT 16ms timeout
#else
  movlw     b'00001011'     ; WDT 32ms timeout    
#endif  
  movwf     WDTCON    
  return
INIT_FAST_MODE:
  movlw     HIGH(FAST_PULSES)
  movwf     n_pulses_H
  incf      n_pulses_H
  movlw     LOW(FAST_PULSES)
  movwf     n_pulses_L
  movlw     .2
  movwf     debounce_ticks
  movwf     debounce_count
  BANKSEL   WDTCON
  movlw     b'00001111'   ; WDT 128ms timeout
  movwf     WDTCON    
  return     
INIT_SLOW_MODE:
  movlw     HIGH(SLOW_PULSES)
  movwf     n_pulses_H
  incf      n_pulses_H
  movlw     LOW(SLOW_PULSES)
  movwf     n_pulses_L
  movlw     .1
  movwf     debounce_ticks
  movwf     debounce_count
  BANKSEL   WDTCON
  movlw     b'00010101'   ; WDT 1s timeout    
  movwf     WDTCON    
  return

  ;; fill remainder of program memory with reset instructions
  fill      (reset), 0x0400-$

  END
