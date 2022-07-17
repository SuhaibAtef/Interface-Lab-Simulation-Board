
_mapping:

;q1.c,3 :: 		unsigned mapping(unsigned int num){
;q1.c,4 :: 		switch(num){
	GOTO       L_mapping0
;q1.c,5 :: 		case 0:
L_mapping2:
;q1.c,6 :: 		return 0xFC ;
	MOVLW      252
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,7 :: 		case 1:
L_mapping3:
;q1.c,8 :: 		return 0x60;
	MOVLW      96
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q1.c,9 :: 		case 2:
L_mapping4:
;q1.c,10 :: 		return 0xDA;
	MOVLW      218
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,11 :: 		case 3:
L_mapping5:
;q1.c,12 :: 		return 0xF2;
	MOVLW      242
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,13 :: 		case 4:
L_mapping6:
;q1.c,14 :: 		return 0x66;
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_mapping
;q1.c,15 :: 		case 5:
L_mapping7:
;q1.c,16 :: 		return 0xB6;
	MOVLW      182
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_mapping
;q1.c,18 :: 		}
L_mapping0:
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping17
	MOVLW      0
	XORWF      FARG_mapping_num+0, 0
L__mapping17:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping2
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping18
	MOVLW      1
	XORWF      FARG_mapping_num+0, 0
L__mapping18:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping3
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping19
	MOVLW      2
	XORWF      FARG_mapping_num+0, 0
L__mapping19:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping4
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping20
	MOVLW      3
	XORWF      FARG_mapping_num+0, 0
L__mapping20:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping5
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping21
	MOVLW      4
	XORWF      FARG_mapping_num+0, 0
L__mapping21:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping6
	MOVLW      0
	XORWF      FARG_mapping_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mapping22
	MOVLW      5
	XORWF      FARG_mapping_num+0, 0
L__mapping22:
	BTFSC      STATUS+0, 2
	GOTO       L_mapping7
;q1.c,19 :: 		}
L_end_mapping:
	RETURN
; end of _mapping

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;q1.c,21 :: 		void interrupt(){
;q1.c,25 :: 		if(PIR1.F5==1){
	BTFSS      PIR1+0, 5
	GOTO       L_interrupt8
;q1.c,26 :: 		x=UART1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      interrupt_x_L0+0
	CLRF       interrupt_x_L0+1
;q1.c,27 :: 		x =x -0x30;
	MOVLW      48
	SUBWF      interrupt_x_L0+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      interrupt_x_L0+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      interrupt_x_L0+0
	MOVF       R1+1, 0
	MOVWF      interrupt_x_L0+1
;q1.c,28 :: 		if(x==1){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt25
	MOVLW      1
	XORWF      R1+0, 0
L__interrupt25:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt9
;q1.c,29 :: 		VOLT = ADC_Read(2) ;
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__interrupt+0
	MOVF       R0+1, 0
	MOVWF      FLOC__interrupt+1
	MOVF       FLOC__interrupt+0, 0
	MOVWF      interrupt_VOLT_L0+0
	MOVF       FLOC__interrupt+1, 0
	MOVWF      interrupt_VOLT_L0+1
;q1.c,30 :: 		VOLT2 = (VOLT * 5)/1023  ;
	MOVF       FLOC__interrupt+0, 0
	MOVWF      R0+0
	MOVF       FLOC__interrupt+1, 0
	MOVWF      R0+1
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
	MOVWF      interrupt_VOLT2_L0+0
	MOVF       R0+1, 0
	MOVWF      interrupt_VOLT2_L0+1
;q1.c,31 :: 		UART1_Write(VOLT);
	MOVF       FLOC__interrupt+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;q1.c,32 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;q1.c,33 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q1.c,34 :: 		PORTB=Mapping(VOLT2);
	MOVF       interrupt_VOLT2_L0+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       interrupt_VOLT2_L0+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q1.c,35 :: 		}
	GOTO       L_interrupt10
L_interrupt9:
;q1.c,36 :: 		else if (x==2){
	MOVLW      0
	XORWF      interrupt_x_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt26
	MOVLW      2
	XORWF      interrupt_x_L0+0, 0
L__interrupt26:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt11
;q1.c,38 :: 		VOLT = ADC_Read(3) ;
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__interrupt+0
	MOVF       R0+1, 0
	MOVWF      FLOC__interrupt+1
	MOVF       FLOC__interrupt+0, 0
	MOVWF      interrupt_VOLT_L0+0
	MOVF       FLOC__interrupt+1, 0
	MOVWF      interrupt_VOLT_L0+1
;q1.c,39 :: 		VOLT2 = (VOLT * 5)/1023  ;
	MOVF       FLOC__interrupt+0, 0
	MOVWF      R0+0
	MOVF       FLOC__interrupt+1, 0
	MOVWF      R0+1
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
	MOVWF      interrupt_VOLT2_L0+0
	MOVF       R0+1, 0
	MOVWF      interrupt_VOLT2_L0+1
;q1.c,40 :: 		UART1_Write(VOLT);
	MOVF       FLOC__interrupt+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;q1.c,41 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;q1.c,42 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;q1.c,43 :: 		PORTB=Mapping(VOLT2);
	MOVF       interrupt_VOLT2_L0+0, 0
	MOVWF      FARG_mapping_num+0
	MOVF       interrupt_VOLT2_L0+1, 0
	MOVWF      FARG_mapping_num+1
	CALL       _mapping+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;q1.c,44 :: 		}
	GOTO       L_interrupt12
L_interrupt11:
;q1.c,45 :: 		else if (x==3){
	MOVLW      0
	XORWF      interrupt_x_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt27
	MOVLW      3
	XORWF      interrupt_x_L0+0, 0
L__interrupt27:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt13
;q1.c,47 :: 		VOLT = (((ADC_Read(2) * 5)/1023) + ((ADC_Read(3) * 5)/1023));
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
	MOVWF      FLOC__interrupt+0
	MOVF       R0+1, 0
	MOVWF      FLOC__interrupt+1
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
	MOVF       FLOC__interrupt+0, 0
	ADDWF      R0+0, 1
	MOVF       FLOC__interrupt+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      interrupt_VOLT_L0+0
	MOVF       R0+1, 0
	MOVWF      interrupt_VOLT_L0+1
;q1.c,48 :: 		UART1_Write(VOLT);
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;q1.c,49 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;q1.c,50 :: 		PORTB=VOLT;
	MOVF       interrupt_VOLT_L0+0, 0
	MOVWF      PORTB+0
;q1.c,51 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_interrupt14:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt14
	DECFSZ     R12+0, 1
	GOTO       L_interrupt14
	DECFSZ     R11+0, 1
	GOTO       L_interrupt14
	NOP
	NOP
;q1.c,53 :: 		}else{
	GOTO       L_interrupt15
L_interrupt13:
;q1.c,54 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;q1.c,55 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;q1.c,56 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q1.c,57 :: 		PORTB=0;
	CLRF       PORTB+0
;q1.c,58 :: 		UART1_Write_Text("Welcome on CPE454");
	MOVLW      ?lstr1_q1+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;q1.c,59 :: 		}
L_interrupt15:
L_interrupt12:
L_interrupt10:
;q1.c,61 :: 		}
L_interrupt8:
;q1.c,62 :: 		}
L_end_interrupt:
L__interrupt24:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;q1.c,65 :: 		void main() {
;q1.c,66 :: 		TRISD=0;
	CLRF       TRISD+0
;q1.c,67 :: 		TRISB=0;
	CLRF       TRISB+0
;q1.c,68 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;q1.c,69 :: 		UART1_init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;q1.c,70 :: 		INTCON=0xC0;
	MOVLW      192
	MOVWF      INTCON+0
;q1.c,71 :: 		PIR1=0;
	CLRF       PIR1+0
;q1.c,72 :: 		PIE1=0b00100000;
	MOVLW      32
	MOVWF      PIE1+0
;q1.c,73 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
