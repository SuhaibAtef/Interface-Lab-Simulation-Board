
_main:

;q2.c,1 :: 		void main() {
;q2.c,4 :: 		trisc.f0=1;
	BSF        TRISC+0, 0
;q2.c,5 :: 		trisc.f1=0;
	BCF        TRISC+0, 1
;q2.c,6 :: 		trisc.f2=0;
	BCF        TRISC+0, 2
;q2.c,7 :: 		trisd=0x0E;
	MOVLW      14
	MOVWF      TRISD+0
;q2.c,8 :: 		trisd.f7=0;
	BCF        TRISD+0, 7
;q2.c,9 :: 		portD.F7=1;
	BSF        PORTD+0, 7
;q2.c,10 :: 		trisb=0;
	CLRF       TRISB+0
;q2.c,12 :: 		while(1){
L_main0:
;q2.c,13 :: 		RevNo=(portd & (0x0E));
	MOVLW      14
	ANDWF      PORTD+0, 0
	MOVWF      main_RevNo_L0+0
	CLRF       main_RevNo_L0+1
	MOVLW      0
	ANDWF      main_RevNo_L0+1, 1
	MOVLW      0
	MOVWF      main_RevNo_L0+1
;q2.c,14 :: 		portb=RevNo;
	MOVF       main_RevNo_L0+0, 0
	MOVWF      PORTB+0
;q2.c,15 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;q2.c,16 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;q2.c,17 :: 		for(i=1;i<=3*RevNo;i++){
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main2:
	MOVLW      3
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       main_RevNo_L0+0, 0
	MOVWF      R4+0
	MOVF       main_RevNo_L0+1, 0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       main_i_L0+1, 0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBWF      R0+0, 0
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;q2.c,18 :: 		while(portc.f0==0){}
L_main5:
	BTFSC      PORTC+0, 0
	GOTO       L_main6
	GOTO       L_main5
L_main6:
;q2.c,19 :: 		while(portc.f0==1){}
L_main7:
	BTFSS      PORTC+0, 0
	GOTO       L_main8
	GOTO       L_main7
L_main8:
;q2.c,17 :: 		for(i=1;i<=3*RevNo;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q2.c,21 :: 		}
	GOTO       L_main2
L_main3:
;q2.c,22 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;q2.c,23 :: 		delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;q2.c,24 :: 		}
	GOTO       L_main0
;q2.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
