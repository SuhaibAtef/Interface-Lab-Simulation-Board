
_main:

;q2.c,16 :: 		void main() {
;q2.c,19 :: 		trisd.f7=0;
	BCF        TRISD+0, 7
;q2.c,20 :: 		trisb=0;
	CLRF       TRISB+0
;q2.c,21 :: 		portd.f7=1;
	BSF        PORTD+0, 7
;q2.c,22 :: 		lcd_init();
	CALL       _Lcd_Init+0
;q2.c,25 :: 		temp=adc_read(1)/2;
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      main_temp_L0+0
	MOVF       R2+1, 0
	MOVWF      main_temp_L0+1
;q2.c,26 :: 		portb=temp;
	MOVF       R2+0, 0
	MOVWF      PORTB+0
;q2.c,27 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;q2.c,28 :: 		lcd_out(1,1,"temp = ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_q2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;q2.c,29 :: 		ByteToStr(temp,x);
	MOVF       main_temp_L0+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      main_x_L0+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;q2.c,30 :: 		lcd_out_cp(x);
	MOVLW      main_x_L0+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;q2.c,31 :: 		lcd_out_cp(" C.");
	MOVLW      ?lstr2_q2+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;q2.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
