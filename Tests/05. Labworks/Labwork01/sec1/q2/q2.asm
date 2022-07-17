
_main:

;q2.c,1 :: 		void main() {
;q2.c,3 :: 		trisD=0x0E;
	MOVLW      14
	MOVWF      TRISD+0
;q2.c,4 :: 		portD.F7 =1;
	BSF        PORTD+0, 7
;q2.c,5 :: 		trisB=0;
	CLRF       TRISB+0
;q2.c,6 :: 		portB=0;
	CLRF       PORTB+0
;q2.c,7 :: 		while(1){
L_main0:
;q2.c,8 :: 		value = (portD>>1)& 0x07;
	MOVF       PORTD+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	RRF        R3+0, 1
	BCF        R3+0, 7
	MOVLW      7
	ANDWF      R3+0, 1
	CLRF       R3+1
	MOVLW      0
	ANDWF      R3+1, 1
	MOVLW      0
	MOVWF      R3+1
;q2.c,9 :: 		portB = value<<5;
	MOVLW      5
	MOVWF      R1+0
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main3:
	BTFSC      STATUS+0, 2
	GOTO       L__main4
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main3
L__main4:
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q2.c,10 :: 		portB.F0 = !(value%2);
	MOVLW      1
	ANDWF      R3+0, 0
	MOVWF      R1+0
	MOVF       R3+1, 0
	MOVWF      R1+1
	MOVLW      0
	ANDWF      R1+1, 1
	MOVF       R1+0, 0
	IORWF      R1+1, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	BTFSC      R0+0, 0
	GOTO       L__main5
	BCF        PORTB+0, 0
	GOTO       L__main6
L__main5:
	BSF        PORTB+0, 0
L__main6:
;q2.c,11 :: 		}
	GOTO       L_main0
;q2.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
