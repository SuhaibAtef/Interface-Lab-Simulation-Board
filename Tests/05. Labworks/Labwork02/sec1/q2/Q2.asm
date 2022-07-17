
_isPrime:

;Q2.c,16 :: 		int isPrime(short int n){
;Q2.c,18 :: 		for( i=2;i<n;i++){
	MOVLW      2
	MOVWF      isPrime_i_L0+0
	MOVLW      0
	MOVWF      isPrime_i_L0+1
L_isPrime0:
	MOVLW      128
	XORWF      isPrime_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	BTFSC      FARG_isPrime_n+0, 7
	MOVLW      127
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__isPrime19
	MOVF       FARG_isPrime_n+0, 0
	SUBWF      isPrime_i_L0+0, 0
L__isPrime19:
	BTFSC      STATUS+0, 0
	GOTO       L_isPrime1
;Q2.c,19 :: 		if(n%i==0){
	MOVF       isPrime_i_L0+0, 0
	MOVWF      R4+0
	MOVF       isPrime_i_L0+1, 0
	MOVWF      R4+1
	MOVF       FARG_isPrime_n+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSC      R0+0, 7
	MOVLW      255
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__isPrime20
	MOVLW      0
	XORWF      R0+0, 0
L__isPrime20:
	BTFSS      STATUS+0, 2
	GOTO       L_isPrime3
;Q2.c,20 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_isPrime
;Q2.c,21 :: 		}
L_isPrime3:
;Q2.c,18 :: 		for( i=2;i<n;i++){
	INCF       isPrime_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       isPrime_i_L0+1, 1
;Q2.c,22 :: 		}
	GOTO       L_isPrime0
L_isPrime1:
;Q2.c,23 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;Q2.c,24 :: 		}
L_end_isPrime:
	RETURN
; end of _isPrime

_Move_Delay:

;Q2.c,32 :: 		void Move_Delay() {                  // Function used for text moving
;Q2.c,33 :: 		Delay_ms(500);                     // You can change the moving speed here
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Move_Delay4:
	DECFSZ     R13+0, 1
	GOTO       L_Move_Delay4
	DECFSZ     R12+0, 1
	GOTO       L_Move_Delay4
	DECFSZ     R11+0, 1
	GOTO       L_Move_Delay4
	NOP
	NOP
;Q2.c,34 :: 		}
L_end_Move_Delay:
	RETURN
; end of _Move_Delay

_main:

;Q2.c,36 :: 		void main(){
;Q2.c,37 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Q2.c,39 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,40 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,41 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Q2.c,43 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Q2.c,44 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;Q2.c,45 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,47 :: 		Lcd_Out(1,1,txt1);                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Q2.c,48 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Q2.c,50 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Q2.c,53 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	CLRF       _i+0
L_main7:
	MOVLW      4
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;Q2.c,54 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,55 :: 		Move_Delay();
	CALL       _Move_Delay+0
;Q2.c,53 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	INCF       _i+0, 1
;Q2.c,56 :: 		}
	GOTO       L_main7
L_main8:
;Q2.c,58 :: 		while(1) {                         // Endless loop
L_main10:
;Q2.c,59 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	CLRF       _i+0
L_main12:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main13
;Q2.c,60 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,61 :: 		Move_Delay();
	CALL       _Move_Delay+0
;Q2.c,59 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	INCF       _i+0, 1
;Q2.c,62 :: 		}
	GOTO       L_main12
L_main13:
;Q2.c,64 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	CLRF       _i+0
L_main15:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;Q2.c,65 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Q2.c,66 :: 		Move_Delay();
	CALL       _Move_Delay+0
;Q2.c,64 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INCF       _i+0, 1
;Q2.c,67 :: 		}
	GOTO       L_main15
L_main16:
;Q2.c,68 :: 		}
	GOTO       L_main10
;Q2.c,69 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
