
_main:

;LCDTest.c,15 :: 		void main() {
;LCDTest.c,18 :: 		lcd_init();
	CALL       _Lcd_Init+0
;LCDTest.c,19 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;LCDTest.c,20 :: 		temp=(ADC_Read(1)*500)/1023 ;
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      244
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      255
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      main_temp_L0+0
;LCDTest.c,21 :: 		while(1){
L_main1:
;LCDTest.c,22 :: 		temp=(ADC_Read(1)*500)/1023 ;
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      244
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      255
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      main_temp_L0+0
;LCDTest.c,23 :: 		lcd_out(1,1,"temp = ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_LCDTest+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCDTest.c,24 :: 		ShortToStr(temp,x);
	MOVF       main_temp_L0+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      main_x_L0+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;LCDTest.c,25 :: 		lcd_out_cp(x);
	MOVLW      main_x_L0+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;LCDTest.c,26 :: 		lcd_out_cp(" C.");
	MOVLW      ?lstr2_LCDTest+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;LCDTest.c,27 :: 		trisd.f7=0;
	BCF        TRISD+0, 7
;LCDTest.c,28 :: 		portd.f7=1;
	BSF        PORTD+0, 7
;LCDTest.c,29 :: 		portb=temp;
	MOVF       main_temp_L0+0, 0
	MOVWF      PORTB+0
;LCDTest.c,30 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LCDTest.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCDTest.c,32 :: 		}
	GOTO       L_main1
;LCDTest.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
