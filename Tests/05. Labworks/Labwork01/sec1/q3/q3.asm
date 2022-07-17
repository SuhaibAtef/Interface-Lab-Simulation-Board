
_mapping:

;q3.c,1 :: 		unsigned mapping(unsigned int num){
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
;q3.c,11 :: 		}
L_mapping0:
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping11
	MOVLW      0
	XORWF      FARG_mapping_num+0, 0
L__mapping11:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping2
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping12
	MOVLW      1
	XORWF      FARG_mapping_num+0, 0
L__mapping12:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping3
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping13
	MOVLW      2
	XORWF      FARG_mapping_num+0, 0
L__mapping13:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping4
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping14
	MOVLW      3
	XORWF      FARG_mapping_num+0, 0
L__mapping14:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping5
;q3.c,12 :: 		}
L_end_mapping:
	RETURN
; end of _mapping

_main:

;q3.c,14 :: 		void main() {
;q3.c,16 :: 		trisB=0;
	CLRF       TRISB+0
;q3.c,17 :: 		trisD= 0x0F;
	MOVLW      15
	MOVWF      TRISD+0
;q3.c,18 :: 		portB=0;
	CLRF       PORTB+0
;q3.c,19 :: 		portD.F4=1;
	BSF        PORTD+0, 4
;q3.c,20 :: 		portD.F5=0;
	BCF        PORTD+0, 5
;q3.c,21 :: 		portD.F7=0;
	BCF        PORTD+0, 7
;q3.c,22 :: 		while(1){
L_main6:
;q3.c,23 :: 		x = (portD>>2)&0x03;
	MOVF       PORTD+0, 0
	MOVWF      main_x_L0+0
	CLRF       main_x_L0+1
	RRF        main_x_L0+0, 1
	BCF        main_x_L0+0, 7
	RRF        main_x_L0+0, 1
	BCF        main_x_L0+0, 7
	MOVLW      3
	ANDWF      main_x_L0+0, 1
	CLRF       main_x_L0+1
	MOVLW      0
	ANDWF      main_x_L0+1, 1
	MOVLW      0
	MOVWF      main_x_L0+1
;q3.c,24 :: 		y = (portD)&0x03;
	MOVLW      3
	ANDWF      PORTD+0, 0
	MOVWF      main_y_L0+0
	CLRF       main_y_L0+1
	MOVLW      0
	ANDWF      main_y_L0+1, 1
	MOVLW      0
	MOVWF      main_y_L0+1
;q3.c,25 :: 		portB= mapping(x);
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       main_x_L0+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q3.c,26 :: 		portD.F4=0;
	BCF        PORTD+0, 4
;q3.c,27 :: 		portD.F5=1;
	BSF        PORTD+0, 5
;q3.c,28 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;q3.c,29 :: 		portB= mapping(y);
	MOVF       main_y_L0+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       main_y_L0+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q3.c,30 :: 		portD.F4=1;
	BSF        PORTD+0, 4
;q3.c,31 :: 		portD.F5=0;
	BCF        PORTD+0, 5
;q3.c,32 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;q3.c,33 :: 		}
	GOTO       L_main6
;q3.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
