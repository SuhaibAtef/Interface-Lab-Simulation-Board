
_show_seven:

;q3.c,1 :: 		void show_seven(char y){
;q3.c,4 :: 		if (y=='G') {Left=0xF6;}else {Left=0x1C;}
	MOVF       FARG_show_seven_y+0, 0
	XORLW      71
	BTFSS      STATUS+0, 2
	GOTO       L_show_seven0
	MOVLW      246
	MOVWF      R1+0
	CLRF       R1+1
	GOTO       L_show_seven1
L_show_seven0:
	MOVLW      28
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_show_seven1:
;q3.c,5 :: 		Right=0x1E;
	MOVLW      30
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;q3.c,6 :: 		while(1){
L_show_seven2:
;q3.c,7 :: 		PORTB=Left;
	MOVF       R1+0, 0
	MOVWF      PORTB+0
;q3.c,8 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q3.c,9 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;q3.c,10 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_show_seven4:
	DECFSZ     R13+0, 1
	GOTO       L_show_seven4
	DECFSZ     R12+0, 1
	GOTO       L_show_seven4
	NOP
	NOP
;q3.c,11 :: 		PORTB=Right;
	MOVF       R3+0, 0
	MOVWF      PORTB+0
;q3.c,12 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;q3.c,13 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;q3.c,14 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_show_seven5:
	DECFSZ     R13+0, 1
	GOTO       L_show_seven5
	DECFSZ     R12+0, 1
	GOTO       L_show_seven5
	NOP
	NOP
;q3.c,15 :: 		}
	GOTO       L_show_seven2
;q3.c,16 :: 		}
L_end_show_seven:
	RETURN
; end of _show_seven

_main:

;q3.c,19 :: 		void main() {
;q3.c,22 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;q3.c,23 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;q3.c,24 :: 		TRISD.F4=0;
	BCF        TRISD+0, 4
;q3.c,25 :: 		TRISD.F5=0;
	BCF        TRISD+0, 5
;q3.c,26 :: 		TRISB=0;
	CLRF       TRISB+0
;q3.c,27 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;q3.c,28 :: 		POT1 = (ADC_Read(2) * 5)/1023  ;
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
	MOVF       R0+0, 0
	MOVWF      main_POT1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_POT1_L0+1
;q3.c,29 :: 		POT2 = (ADC_Read(3) * 5)/1023  ;
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
	MOVWF      main_POT2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_POT2_L0+1
;q3.c,30 :: 		if (POT1>POT2){
	MOVF       main_POT1_L0+1, 0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_POT1_L0+0, 0
	SUBWF      R0+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;q3.c,31 :: 		show_seven('G');
	MOVLW      71
	MOVWF      FARG_show_seven_y+0
	CALL       _show_seven+0
;q3.c,32 :: 		}else if (POT1<POT2){
	GOTO       L_main8
L_main7:
	MOVF       main_POT2_L0+1, 0
	SUBWF      main_POT1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       main_POT2_L0+0, 0
	SUBWF      main_POT1_L0+0, 0
L__main15:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;q3.c,33 :: 		show_seven('L');
	MOVLW      76
	MOVWF      FARG_show_seven_y+0
	CALL       _show_seven+0
;q3.c,34 :: 		} else{
	GOTO       L_main10
L_main9:
;q3.c,35 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q3.c,36 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;q3.c,37 :: 		PORTB=0;
	CLRF       PORTB+0
;q3.c,38 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;q3.c,39 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;q3.c,40 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;q3.c,41 :: 		}
L_main10:
L_main8:
;q3.c,42 :: 		}
L_main6:
;q3.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
