

unsigned mapping(unsigned int num){
     switch(num){
     case 0:
     return 0xFC ;
     case 1:
     return 0x60;
     case 2:
     return 0xDA;
     case 3:
     return 0xF2;
     case 4:
     return 0x66;
     case 5:
     return 0xB6;

     }
}

void interrupt(){
unsigned int VOLT;
unsigned int VOLT2;
unsigned  x;
if(PIR1.F5==1){
x=UART1_read();
x =x -0x30;
if(x==1){
  VOLT = ADC_Read(2) ;
  VOLT2 = (VOLT * 5)/1023  ;
  UART1_Write(VOLT);
  PORTD.F5=1;
  PORTD.F4=0;
  PORTB=Mapping(VOLT2);
}
else if (x==2){

  VOLT = ADC_Read(3) ;
  VOLT2 = (VOLT * 5)/1023  ;
  UART1_Write(VOLT);
  PORTD.F4=1;
  PORTD.F5=0;
  PORTB=Mapping(VOLT2);
}
else if (x==3){

  VOLT = (((ADC_Read(2) * 5)/1023) + ((ADC_Read(3) * 5)/1023));
  UART1_Write(VOLT);
  PORTD.F7=1;
  PORTB=VOLT;
  delay_ms(1000);

}else{
PORTD.F7=0;
PORTD.F5=0;
PORTD.F4=0;
PORTB=0;
UART1_Write_Text("Welcome on CPE454");
}
 PIR1.F5==0;
}
}


void main() {
TRISD=0;
TRISB=0;
PORTD.F4=0;
UART1_init(9600);
INTCON=0xC0;
PIR1=0;
PIE1=0b00100000;
}