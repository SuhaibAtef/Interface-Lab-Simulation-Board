
_mapping:

;q3.c,1 :: 		unsigned mapping(unsigned num){
;q3.c,2 :: 		switch(num){
	GOTO       L_mapping0
;q3.c,3 :: 		case 0:
L_mapping2:
;q3.c,4 :: 		return 0xFC ;
	MOVLW      252
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,5 :: 		case 1:
L_mapping3:
;q3.c,6 :: 		return 0x60;
	MOVLW      96
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q3.c,7 :: 		case 2:
L_mapping4:
;q3.c,8 :: 		return 0xDA;
	MOVLW      218
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,9 :: 		case 3:
L_mapping5:
;q3.c,10 :: 		return 0xF2;
	MOVLW      242
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,11 :: 		case 4:
L_mapping6:
;q3.c,12 :: 		return 0x66;
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q3.c,13 :: 		case 5:
L_mapping7:
;q3.c,14 :: 		return 0xB6;
	MOVLW      182
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,15 :: 		case 6:
L_mapping8:
;q3.c,16 :: 		return 0xBE;
	MOVLW      190
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,17 :: 		case 7:
L_mapping9:
;q3.c,18 :: 		return 0xE0;
	MOVLW      224
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,19 :: 		case 8:
L_mapping10:
;q3.c,20 :: 		return 0xFE;
	MOVLW      254
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,21 :: 		case 9:
L_mapping11:
;q3.c,22 :: 		return 0xF6;
	MOVLW      246
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q3.c,23 :: 		}
L_mapping0:
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping21
	MOVLW      0
	XORWF      FARG_mapping_num+0, 0
L__mapping21:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping2
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping22
	MOVLW      1
	XORWF      FARG_mapping_num+0, 0
L__mapping22:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping3
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping23
	MOVLW      2
	XORWF      FARG_mapping_num+0, 0
L__mapping23:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping4
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping24
	MOVLW      3
	XORWF      FARG_mapping_num+0, 0
L__mapping24:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping5
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping25
	MOVLW      4
	XORWF      FARG_mapping_num+0, 0
L__mapping25:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping6
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping26
	MOVLW      5
	XORWF      FARG_mapping_num+0, 0
L__mapping26:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping7
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping27
	MOVLW      6
	XORWF      FARG_mapping_num+0, 0
L__mapping27:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping8
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping28
	MOVLW      7
	XORWF      FARG_mapping_num+0, 0
L__mapping28:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping9
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping29
	MOVLW      8
	XORWF      FARG_mapping_num+0, 0
L__mapping29:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping10
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping30
	MOVLW      9
	XORWF      FARG_mapping_num+0, 0
L__mapping30:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping11
;q3.c,26 :: 		}
L_end_mapping:
	RETURN
; end of _mapping

_showNumbers:

;q3.c,27 :: 		void showNumbers(unsigned int m1,unsigned int m2) {
;q3.c,28 :: 		int i =100;
	MOVLW      100
	MOVWF      showNumbers_i_L0+0
	MOVLW      0
	MOVWF      showNumbers_i_L0+1
;q3.c,29 :: 		while(i){
L_showNumbers12:
	MOVF       showNumbers_i_L0+0, 0
	IORWF      showNumbers_i_L0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_showNumbers13
;q3.c,30 :: 		PORTB= mapping(m2);
	MOVF       FARG_showNumbers_m2+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       FARG_showNumbers_m2+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q3.c,31 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;q3.c,32 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;q3.c,33 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_showNumbers14:
	DECFSZ     R13+0, 1
	GOTO       L_showNumbers14
	DECFSZ     R12+0, 1
	GOTO       L_showNumbers14
	NOP
	NOP
;q3.c,34 :: 		PORTB= mapping(m1);
	MOVF       FARG_showNumbers_m1+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       FARG_showNumbers_m1+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q3.c,35 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q3.c,36 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;q3.c,37 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_showNumbers15:
	DECFSZ     R13+0, 1
	GOTO       L_showNumbers15
	DECFSZ     R12+0, 1
	GOTO       L_showNumbers15
	NOP
	NOP
;q3.c,38 :: 		i=i-1;
	MOVLW      1
	SUBWF      showNumbers_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       showNumbers_i_L0+1, 1
;q3.c,39 :: 		}
	GOTO       L_showNumbers12
L_showNumbers13:
;q3.c,40 :: 		}
L_end_showNumbers:
	RETURN
; end of _showNumbers

_main:

;q3.c,41 :: 		void main() {
;q3.c,43 :: 		unsigned int firstMark=98;
	MOVLW      98
	MOVWF      main_firstMark_L0+0
	MOVLW      0
	MOVWF      main_firstMark_L0+1
	MOVLW      51
	MOVWF      main_secondMark_L0+0
	MOVLW      0
	MOVWF      main_secondMark_L0+1
;q3.c,45 :: 		TRISB =0;
	CLRF       TRISB+0
;q3.c,46 :: 		TRISD =0 ;
	CLRF       TRISD+0
;q3.c,48 :: 		while(1){
L_main16:
;q3.c,50 :: 		showNumbers(firstMark/10,firstMark%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_firstMark_L0+0, 0
	MOVWF      R0+0
	MOVF       main_firstMark_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_showNumbers_m1+0
	MOVF       R0+1, 0
	MOVWF      FARG_showNumbers_m1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_firstMark_L0+0, 0
	MOVWF      R0+0
	MOVF       main_firstMark_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_showNumbers_m2+0
	MOVF       R0+1, 0
	MOVWF      FARG_showNumbers_m2+1
	CALL       _showNumbers+0
;q3.c,51 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;q3.c,53 :: 		showNumbers(secondMark/10,secondMark%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_secondMark_L0+0, 0
	MOVWF      R0+0
	MOVF       main_secondMark_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_showNumbers_m1+0
	MOVF       R0+1, 0
	MOVWF      FARG_showNumbers_m1+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_secondMark_L0+0, 0
	MOVWF      R0+0
	MOVF       main_secondMark_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_showNumbers_m2+0
	MOVF       R0+1, 0
	MOVWF      FARG_showNumbers_m2+1
	CALL       _showNumbers+0
;q3.c,54 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;q3.c,55 :: 		}
	GOTO       L_main16
;q3.c,56 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
