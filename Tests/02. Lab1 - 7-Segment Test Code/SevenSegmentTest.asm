
_main:

;SevenSegmentTest.c,1 :: 		void main()
;SevenSegmentTest.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;SevenSegmentTest.c,4 :: 		TRISD.F4=0;
	BCF        TRISD+0, 4
;SevenSegmentTest.c,5 :: 		TRISD.F5=0;
	BCF        TRISD+0, 5
;SevenSegmentTest.c,6 :: 		while(1)
L_main0:
;SevenSegmentTest.c,8 :: 		PORTB=0xF2;
	MOVLW      242
	MOVWF      PORTB+0
;SevenSegmentTest.c,9 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SevenSegmentTest.c,10 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;SevenSegmentTest.c,11 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;SevenSegmentTest.c,12 :: 		PORTB=0X60;
	MOVLW      96
	MOVWF      PORTB+0
;SevenSegmentTest.c,13 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;SevenSegmentTest.c,14 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;SevenSegmentTest.c,15 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;SevenSegmentTest.c,16 :: 		}
	GOTO       L_main0
;SevenSegmentTest.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
