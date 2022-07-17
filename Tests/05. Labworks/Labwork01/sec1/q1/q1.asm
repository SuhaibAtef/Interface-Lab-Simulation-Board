
_main:

;q1.c,1 :: 		void main() {
;q1.c,2 :: 		trisB = 0x00;
	CLRF       TRISB+0
;q1.c,3 :: 		trisD.F7=0;
	BCF        TRISD+0, 7
;q1.c,4 :: 		portD.F7=1;
	BSF        PORTD+0, 7
;q1.c,5 :: 		trisC.F2 = 0;
	BCF        TRISC+0, 2
;q1.c,6 :: 		portC.F2=0;
	BCF        PORTC+0, 2
;q1.c,7 :: 		portB = 0x06;
	MOVLW      6
	MOVWF      PORTB+0
;q1.c,9 :: 		while(1){
L_main0:
;q1.c,10 :: 		if(portB == 0x1F){
	MOVF       PORTB+0, 0
	XORLW      31
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;q1.c,11 :: 		portC.F2=1;
	BSF        PORTC+0, 2
;q1.c,12 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;q1.c,13 :: 		portB =0;
	CLRF       PORTB+0
;q1.c,14 :: 		portC.F2=0;
	BCF        PORTC+0, 2
;q1.c,15 :: 		}else{
	GOTO       L_main4
L_main2:
;q1.c,16 :: 		portB =portB+1;
	INCF       PORTB+0, 1
;q1.c,17 :: 		delay_ms(550);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      203
	MOVWF      R12+0
	MOVLW      69
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;q1.c,18 :: 		}
L_main4:
;q1.c,19 :: 		}
	GOTO       L_main0
;q1.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
