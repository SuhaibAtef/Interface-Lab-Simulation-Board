
_mapping:

;Q3.c,1 :: 		unsigned mapping(unsigned int num){
;Q3.c,2 :: 		switch(num){
	GOTO       L_mapping0
;Q3.c,3 :: 		case 0:
L_mapping2:
;Q3.c,4 :: 		return 0xFC ;
	MOVLW      252
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,5 :: 		case 1:
L_mapping3:
;Q3.c,6 :: 		return 0x60;
	MOVLW      96
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;Q3.c,7 :: 		case 2:
L_mapping4:
;Q3.c,8 :: 		return 0xDA;
	MOVLW      218
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,9 :: 		case 3:
L_mapping5:
;Q3.c,10 :: 		return 0xF2;
	MOVLW      242
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,11 :: 		case 4:
L_mapping6:
;Q3.c,12 :: 		return 0x66;
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;Q3.c,13 :: 		case 5:
L_mapping7:
;Q3.c,14 :: 		return 0xB6;
	MOVLW      182
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,15 :: 		case 6:
L_mapping8:
;Q3.c,16 :: 		return 0xBE;
	MOVLW      190
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,17 :: 		case 7:
L_mapping9:
;Q3.c,18 :: 		return 0xE0;
	MOVLW      224
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,19 :: 		case 8:
L_mapping10:
;Q3.c,20 :: 		return 0xFE;
	MOVLW      254
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,21 :: 		case 9:
L_mapping11:
;Q3.c,22 :: 		return 0xF6;
	MOVLW      246
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;Q3.c,23 :: 		}
L_mapping0:
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping22
	MOVLW      0
	XORWF      FARG_mapping_num+0, 0
L__mapping22:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping2
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping23
	MOVLW      1
	XORWF      FARG_mapping_num+0, 0
L__mapping23:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping3
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping24
	MOVLW      2
	XORWF      FARG_mapping_num+0, 0
L__mapping24:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping4
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping25
	MOVLW      3
	XORWF      FARG_mapping_num+0, 0
L__mapping25:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping5
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping26
	MOVLW      4
	XORWF      FARG_mapping_num+0, 0
L__mapping26:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping6
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping27
	MOVLW      5
	XORWF      FARG_mapping_num+0, 0
L__mapping27:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping7
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping28
	MOVLW      6
	XORWF      FARG_mapping_num+0, 0
L__mapping28:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping8
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping29
	MOVLW      7
	XORWF      FARG_mapping_num+0, 0
L__mapping29:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping9
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping30
	MOVLW      8
	XORWF      FARG_mapping_num+0, 0
L__mapping30:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping10
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping31
	MOVLW      9
	XORWF      FARG_mapping_num+0, 0
L__mapping31:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping11
;Q3.c,24 :: 		}
L_end_mapping:
	RETURN
; end of _mapping

_show2Digits:

;Q3.c,25 :: 		unsigned show2Digits(unsigned int num1,unsigned int num2){
;Q3.c,27 :: 		for (i=0;i<200;i++){
	CLRF       show2Digits_i_L0+0
	CLRF       show2Digits_i_L0+1
L_show2Digits12:
	MOVLW      128
	XORWF      show2Digits_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show2Digits33
	MOVLW      200
	SUBWF      show2Digits_i_L0+0, 0
L__show2Digits33:
	BTFSC      STATUS+0, 0
	GOTO       L_show2Digits13
;Q3.c,28 :: 		portd.F4=1;
	BSF        PORTD+0, 4
;Q3.c,29 :: 		portd.F5=0;
	BCF        PORTD+0, 5
;Q3.c,30 :: 		portb=mapping(num2);
	MOVF       FARG_show2Digits_num2+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       FARG_show2Digits_num2+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Q3.c,31 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_show2Digits15:
	DECFSZ     R13+0, 1
	GOTO       L_show2Digits15
	DECFSZ     R12+0, 1
	GOTO       L_show2Digits15
	NOP
	NOP
;Q3.c,32 :: 		portd.F4=0;
	BCF        PORTD+0, 4
;Q3.c,33 :: 		portd.F5=1;
	BSF        PORTD+0, 5
;Q3.c,34 :: 		portb=mapping(num1);
	MOVF       FARG_show2Digits_num1+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       FARG_show2Digits_num1+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Q3.c,35 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_show2Digits16:
	DECFSZ     R13+0, 1
	GOTO       L_show2Digits16
	DECFSZ     R12+0, 1
	GOTO       L_show2Digits16
	NOP
	NOP
;Q3.c,27 :: 		for (i=0;i<200;i++){
	INCF       show2Digits_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       show2Digits_i_L0+1, 1
;Q3.c,36 :: 		}
	GOTO       L_show2Digits12
L_show2Digits13:
;Q3.c,37 :: 		}
L_end_show2Digits:
	RETURN
; end of _show2Digits

_main:

;Q3.c,38 :: 		void main() {
;Q3.c,40 :: 		trisd.F1=1;
	BSF        TRISD+0, 1
;Q3.c,41 :: 		trisd.F4=0;
	BCF        TRISD+0, 4
;Q3.c,42 :: 		trisd.F5=0;
	BCF        TRISD+0, 5
;Q3.c,43 :: 		trisb = 0;
	CLRF       TRISB+0
;Q3.c,44 :: 		while(1){
L_main17:
;Q3.c,45 :: 		if(portd.f1==0){
	BTFSC      PORTD+0, 1
	GOTO       L_main19
;Q3.c,46 :: 		v=adc_read(1)/2;
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	RRF        FLOC__main+1, 1
	RRF        FLOC__main+0, 1
	BCF        FLOC__main+1, 7
	MOVF       FLOC__main+0, 0
	MOVWF      main_v_L0+0
	MOVF       FLOC__main+1, 0
	MOVWF      main_v_L0+1
;Q3.c,47 :: 		show2Digits((v/10),v%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_show2Digits_num1+0
	MOVF       R0+1, 0
	MOVWF      FARG_show2Digits_num1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_show2Digits_num2+0
	MOVF       R0+1, 0
	MOVWF      FARG_show2Digits_num2+1
	CALL       _show2Digits+0
;Q3.c,48 :: 		}else{
	GOTO       L_main20
L_main19:
;Q3.c,49 :: 		v=(adc_read(2)*5)/1023;
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
	MOVWF      main_v_L0+0
	MOVF       R0+1, 0
	MOVWF      main_v_L0+1
;Q3.c,50 :: 		v2=(adc_read(3)*5)/1023;
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
;Q3.c,51 :: 		show2Digits(v,v2);
	MOVF       main_v_L0+0, 0
	MOVWF      FARG_show2Digits_num1+0
	MOVF       main_v_L0+1, 0
	MOVWF      FARG_show2Digits_num1+1
	MOVF       R0+0, 0
	MOVWF      FARG_show2Digits_num2+0
	MOVF       R0+1, 0
	MOVWF      FARG_show2Digits_num2+1
	CALL       _show2Digits+0
;Q3.c,52 :: 		}
L_main20:
;Q3.c,53 :: 		}
	GOTO       L_main17
;Q3.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
