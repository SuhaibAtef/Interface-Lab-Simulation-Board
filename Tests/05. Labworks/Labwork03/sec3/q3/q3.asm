
_main:

;q3.c,1 :: 		void main() {
;q3.c,5 :: 		TRISC.F1=0;
	BCF        TRISC+0, 1
;q3.c,6 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;q3.c,8 :: 		while(1){
L_main0:
;q3.c,9 :: 		V1=(ADC_read(2)*5)/1023;
	MOVLW      2
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
;q3.c,10 :: 		if(V1<=2){
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVF       R0+0, 0
	SUBLW      2
L__main17:
	BTFSS      STATUS+0, 0
	GOTO       L_main2
;q3.c,11 :: 		for(i=1;i<=65;i++){
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main3:
	MOVF       main_i_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVF       main_i_L0+0, 0
	SUBLW      65
L__main18:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;q3.c,12 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q3.c,13 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;q3.c,11 :: 		for(i=1;i<=65;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q3.c,14 :: 		}
	GOTO       L_main3
L_main4:
;q3.c,15 :: 		for(i=65;i<=100;i++){
	MOVLW      65
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main6:
	MOVF       main_i_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVF       main_i_L0+0, 0
	SUBLW      100
L__main19:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;q3.c,16 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q3.c,17 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q3.c,15 :: 		for(i=65;i<=100;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q3.c,18 :: 		}
	GOTO       L_main6
L_main7:
;q3.c,19 :: 		}else{
	GOTO       L_main9
L_main2:
;q3.c,20 :: 		for(i=1;i<=85;i++){
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main10:
	MOVF       main_i_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       main_i_L0+0, 0
	SUBLW      85
L__main20:
	BTFSS      STATUS+0, 0
	GOTO       L_main11
;q3.c,21 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q3.c,22 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;q3.c,20 :: 		for(i=1;i<=85;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q3.c,23 :: 		}
	GOTO       L_main10
L_main11:
;q3.c,24 :: 		for(i=85;i<=100;i++){
	MOVLW      85
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main13:
	MOVF       main_i_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVF       main_i_L0+0, 0
	SUBLW      100
L__main21:
	BTFSS      STATUS+0, 0
	GOTO       L_main14
;q3.c,25 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q3.c,26 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;q3.c,24 :: 		for(i=85;i<=100;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q3.c,27 :: 		}
	GOTO       L_main13
L_main14:
;q3.c,28 :: 		}
L_main9:
;q3.c,30 :: 		}
	GOTO       L_main0
;q3.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
