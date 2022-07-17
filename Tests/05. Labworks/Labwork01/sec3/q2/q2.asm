
_fact:

;q2.c,1 :: 		unsigned int fact(unsigned int num)
;q2.c,5 :: 		f=1;
	MOVLW      1
	MOVWF      fact_f_L0+0
	MOVLW      0
	MOVWF      fact_f_L0+1
;q2.c,6 :: 		for(i=1;i<=num;i++){
	MOVLW      1
	MOVWF      fact_i_L0+0
	MOVLW      0
	MOVWF      fact_i_L0+1
L_fact0:
	MOVF       fact_i_L0+1, 0
	SUBWF      FARG_fact_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__fact11
	MOVF       fact_i_L0+0, 0
	SUBWF      FARG_fact_num+0, 0
L__fact11:
	BTFSS      STATUS+0, 0
	GOTO       L_fact1
;q2.c,7 :: 		f=f*i;
	MOVF       fact_f_L0+0, 0
	MOVWF      R0+0
	MOVF       fact_f_L0+1, 0
	MOVWF      R0+1
	MOVF       fact_i_L0+0, 0
	MOVWF      R4+0
	MOVF       fact_i_L0+1, 0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      fact_f_L0+0
	MOVF       R0+1, 0
	MOVWF      fact_f_L0+1
;q2.c,6 :: 		for(i=1;i<=num;i++){
	INCF       fact_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       fact_i_L0+1, 1
;q2.c,8 :: 		}
	GOTO       L_fact0
L_fact1:
;q2.c,9 :: 		return f;
	MOVF       fact_f_L0+0, 0
	MOVWF      R0+0
	MOVF       fact_f_L0+1, 0
	MOVWF      R0+1
;q2.c,11 :: 		}
L_end_fact:
	RETURN
; end of _fact

_main:

;q2.c,13 :: 		void main() {
;q2.c,16 :: 		TRISD= 0X07;
	MOVLW      7
	MOVWF      TRISD+0
;q2.c,17 :: 		TRISB=0;
	CLRF       TRISB+0
;q2.c,18 :: 		TRISC.f2=0b0;
	BCF        TRISC+0, 2
;q2.c,20 :: 		portd=0;
	CLRF       PORTD+0
;q2.c,21 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;q2.c,22 :: 		while(1){
L_main3:
;q2.c,23 :: 		num=portd&0x07 ;
	MOVLW      7
	ANDWF      PORTD+0, 0
	MOVWF      main_num_L0+0
	CLRF       main_num_L0+1
	MOVLW      0
	ANDWF      main_num_L0+1, 1
	MOVLW      0
	MOVWF      main_num_L0+1
;q2.c,24 :: 		portb=num<<5;
	MOVLW      5
	MOVWF      R1+0
	MOVF       main_num_L0+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main13:
	BTFSC      STATUS+0, 2
	GOTO       L__main14
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main13
L__main14:
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q2.c,25 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;q2.c,26 :: 		if(num<=5){
	MOVF       main_num_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       main_num_L0+0, 0
	SUBLW      5
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;q2.c,27 :: 		result=fact(num);
	MOVF       main_num_L0+0, 0
	MOVWF      FARG_fact_num+0
	MOVF       main_num_L0+1, 0
	MOVWF      FARG_fact_num+1
	CALL       _fact+0
;q2.c,28 :: 		portb=result;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q2.c,29 :: 		delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;q2.c,30 :: 		}  else{
	GOTO       L_main8
L_main6:
;q2.c,31 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;q2.c,32 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;q2.c,33 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;q2.c,35 :: 		}
L_main8:
;q2.c,47 :: 		}
	GOTO       L_main3
;q2.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
