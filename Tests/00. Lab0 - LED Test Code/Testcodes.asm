
_main:

;Testcodes.c,1 :: 		void main()
;Testcodes.c,3 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Testcodes.c,4 :: 		TRISD.F7=0;
	BCF        TRISD+0, 7
;Testcodes.c,5 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;Testcodes.c,6 :: 		while(1)
L_main0:
;Testcodes.c,7 :: 		{ PORTB=0XAA;
	MOVLW      170
	MOVWF      PORTB+0
;Testcodes.c,8 :: 		Delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Testcodes.c,9 :: 		PORTB=0x55;
	MOVLW      85
	MOVWF      PORTB+0
;Testcodes.c,10 :: 		Delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Testcodes.c,11 :: 		}
	GOTO       L_main0
;Testcodes.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
