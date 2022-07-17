
_main:

;q1.c,1 :: 		void main() {
;q1.c,4 :: 		TRISC.F1=0;
	BCF        TRISC+0, 1
;q1.c,5 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;q1.c,6 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;q1.c,7 :: 		while(1){
L_main0:
;q1.c,8 :: 		V1=(ADC_read(3)*5)/1023;
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      5
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      255
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      main_V1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_V1_L0+1
;q1.c,9 :: 		if(V1<2){
	MOVLW      0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      2
	SUBWF      R0+0, 0
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;q1.c,11 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;q1.c,12 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q1.c,13 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
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
;q1.c,14 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q1.c,15 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q1.c,16 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;q1.c,18 :: 		}
L_main2:
;q1.c,19 :: 		if(V1==3){
	MOVLW      0
	XORWF      main_V1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      3
	XORWF      main_V1_L0+0, 0
L__main11:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;q1.c,21 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q1.c,22 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q1.c,24 :: 		}
L_main5:
;q1.c,25 :: 		if(V1>3){
	MOVF       main_V1_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_V1_L0+0, 0
	SUBLW      3
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;q1.c,27 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q1.c,28 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;q1.c,29 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;q1.c,30 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q1.c,31 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q1.c,32 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;q1.c,33 :: 		}
L_main6:
;q1.c,34 :: 		}
	GOTO       L_main0
;q1.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
