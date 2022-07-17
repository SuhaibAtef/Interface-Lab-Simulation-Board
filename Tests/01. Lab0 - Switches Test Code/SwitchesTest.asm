
_main:

;SwitchesTest.c,1 :: 		void main()
;SwitchesTest.c,3 :: 		TRISB=0xFF;
	MOVLW      255
	MOVWF      TRISB+0
;SwitchesTest.c,4 :: 		TRISD=0B00001111;
	MOVLW      15
	MOVWF      TRISD+0
;SwitchesTest.c,5 :: 		PORTD.F7=1; // Enable led
	BSF        PORTD+0, 7
;SwitchesTest.c,6 :: 		while(1)
L_main0:
;SwitchesTest.c,7 :: 		{PORTB= PORTD<<4 ; }
	MOVF       PORTD+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
	GOTO       L_main0
;SwitchesTest.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
