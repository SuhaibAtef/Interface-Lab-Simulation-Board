
_mapping:

;q1.c,1 :: 		unsigned mapping(unsigned num){
;q1.c,2 :: 		switch(num){
	GOTO       L_mapping0
;q1.c,3 :: 		case 0:
L_mapping2:
;q1.c,4 :: 		return 0xFC ;
	MOVLW      252
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,5 :: 		case 1:
L_mapping3:
;q1.c,6 :: 		return 0x60;
	MOVLW      96
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q1.c,7 :: 		case 2:
L_mapping4:
;q1.c,8 :: 		return 0xDA;
	MOVLW      218
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,9 :: 		case 3:
L_mapping5:
;q1.c,10 :: 		return 0xF2;
	MOVLW      242
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,11 :: 		case 4:
L_mapping6:
;q1.c,12 :: 		return 0x66;
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q1.c,13 :: 		case 5:
L_mapping7:
;q1.c,14 :: 		return 0xB6;
	MOVLW      182
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,15 :: 		case 6:
L_mapping8:
;q1.c,16 :: 		return 0xBE;
	MOVLW      190
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,17 :: 		case 7:
L_mapping9:
;q1.c,18 :: 		return 0xE0;
	MOVLW      224
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,19 :: 		case 8:
L_mapping10:
;q1.c,20 :: 		return 0xFE;
	MOVLW      254
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,21 :: 		case 9:
L_mapping11:
;q1.c,22 :: 		return 0xF6;
	MOVLW      246
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,23 :: 		}
L_mapping0:
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping20
	MOVLW      0
	XORWF      FARG_mapping_num+0, 0
L__mapping20:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping2
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping21
	MOVLW      1
	XORWF      FARG_mapping_num+0, 0
L__mapping21:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping3
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping22
	MOVLW      2
	XORWF      FARG_mapping_num+0, 0
L__mapping22:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping4
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping23
	MOVLW      3
	XORWF      FARG_mapping_num+0, 0
L__mapping23:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping5
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping24
	MOVLW      4
	XORWF      FARG_mapping_num+0, 0
L__mapping24:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping6
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping25
	MOVLW      5
	XORWF      FARG_mapping_num+0, 0
L__mapping25:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping7
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping26
	MOVLW      6
	XORWF      FARG_mapping_num+0, 0
L__mapping26:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping8
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping27
	MOVLW      7
	XORWF      FARG_mapping_num+0, 0
L__mapping27:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping9
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping28
	MOVLW      8
	XORWF      FARG_mapping_num+0, 0
L__mapping28:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping10
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping29
	MOVLW      9
	XORWF      FARG_mapping_num+0, 0
L__mapping29:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping11
;q1.c,26 :: 		}
L_end_mapping:
	RETURN
; end of _mapping

_main:

;q1.c,28 :: 		void main() {
;q1.c,30 :: 		TRISB =0;
	CLRF       TRISB+0
;q1.c,31 :: 		TRISD =0 ;
	CLRF       TRISD+0
;q1.c,32 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q1.c,33 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;q1.c,34 :: 		while(1){
L_main12:
;q1.c,35 :: 		for(i=0;i<10;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main14:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      10
	SUBWF      main_i_L0+0, 0
L__main31:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;q1.c,36 :: 		PORTB =  mapping(i);
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       main_i_L0+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q1.c,37 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;q1.c,35 :: 		for(i=0;i<10;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;q1.c,38 :: 		}
	GOTO       L_main14
L_main15:
;q1.c,39 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;q1.c,40 :: 		}
	GOTO       L_main12
;q1.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
