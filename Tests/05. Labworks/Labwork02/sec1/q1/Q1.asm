
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Q1.c,5 :: 		void interrupt()
;Q1.c,7 :: 		if(pir1.f5==1)
	BTFSS      PIR1+0, 5
	GOTO       L_interrupt0
;Q1.c,9 :: 		ch=uart1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _ch+0
	CLRF       _ch+1
;Q1.c,10 :: 		if(ch=='1'){
	MOVLW      0
	XORWF      _ch+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt9
	MOVLW      49
	XORWF      _ch+0, 0
L__interrupt9:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt1
;Q1.c,11 :: 		uart1_write_text("1 is pressed");
	MOVLW      ?lstr1_Q1+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Q1.c,12 :: 		v =((adc_read(2)*5)/1023);
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
	MOVWF      _v+0
	MOVF       R0+1, 0
	MOVWF      _v+1
;Q1.c,13 :: 		portb=v;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Q1.c,14 :: 		pir1.f5=0;
	BCF        PIR1+0, 5
;Q1.c,15 :: 		} else if(ch=='2')
	GOTO       L_interrupt2
L_interrupt1:
	MOVLW      0
	XORWF      _ch+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt10
	MOVLW      50
	XORWF      _ch+0, 0
L__interrupt10:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt3
;Q1.c,17 :: 		uart1_write_text("2 is pressed");
	MOVLW      ?lstr2_Q1+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Q1.c,18 :: 		v=(adc_read(1)/2);
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
	MOVWF      _v+0
	MOVF       R2+1, 0
	MOVWF      _v+1
;Q1.c,19 :: 		portb=v;
	MOVF       R2+0, 0
	MOVWF      PORTB+0
;Q1.c,20 :: 		pir1.f5=0  ;
	BCF        PIR1+0, 5
;Q1.c,21 :: 		}
	GOTO       L_interrupt4
L_interrupt3:
;Q1.c,23 :: 		uart1_write_text("Invalid Option");
	MOVLW      ?lstr3_Q1+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Q1.c,24 :: 		portb=0;
	CLRF       PORTB+0
;Q1.c,25 :: 		}
L_interrupt4:
L_interrupt2:
;Q1.c,27 :: 		}
L_interrupt0:
;Q1.c,29 :: 		}
L_end_interrupt:
L__interrupt8:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Q1.c,31 :: 		void main() {
;Q1.c,32 :: 		trisd=0;
	CLRF       TRISD+0
;Q1.c,33 :: 		portd.f7=1;
	BSF        PORTD+0, 7
;Q1.c,34 :: 		trisb=0;
	CLRF       TRISB+0
;Q1.c,35 :: 		uart1_init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Q1.c,36 :: 		intcon=0XC0;
	MOVLW      192
	MOVWF      INTCON+0
;Q1.c,37 :: 		PIE1=0X20;
	MOVLW      32
	MOVWF      PIE1+0
;Q1.c,38 :: 		PIR1=0;
	CLRF       PIR1+0
;Q1.c,41 :: 		while(1){}
L_main5:
	GOTO       L_main5
;Q1.c,43 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
