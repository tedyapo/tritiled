;;;
;;; assembly routines for High-Endurance Flash (HEF) access
;;;
;;; Copyright (C) 2018 Theodore C. Yapo
;;; Released under MIT License (see file)
;;; 
#include <xc.inc>  
#include <pic12lf1571.inc>

;;;
;;; read one word of flash (result in PMDAT)
;;; 
  GLOBAL  _read_hef
  SIGNAT  _read_hef, 88
  PSECT   hef_r_text,local,class=CODE,delta=2 
_read_hef:
    BANKSEL     PMCON1
    bcf         CFGS
    bsf         RD
    nop
    nop
    return

;;;
;;; execute flash unlock sequence for erase or write
;;; 
  GLOBAL  _unlock_hef
  SIGNAT  _unlock_hef, 88
  PSECT   hef_w_text,local,class=CODE,delta=2
_unlock_hef:
    BANKSEL     PMCON2
    movlw       0x55
    movwf       BANKMASK(PMCON2)
    movlw       0xaa
    movwf       BANKMASK(PMCON2)
    bsf         WR
    nop
    nop
    return
