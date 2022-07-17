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
     case 6:
     return 0xBE;
     case 7:
     return 0xE0;
     case 8:
     return 0xFE;
     case 9:
     return 0xF6;
     }
}
unsigned show2Digits(unsigned int num1,unsigned int num2){
int i;
for (i=0;i<200;i++){
portd.F4=1;
portd.F5=0;
portb=mapping(num2);
delay_ms(10);
portd.F4=0;
portd.F5=1;
portb=mapping(num1);
delay_ms(10);
}
}
void main() {
   unsigned int v,v2;
   trisd.F1=1;
   trisd.F4=0;
   trisd.F5=0;
   trisb = 0;
   while(1){
       if(portd.f1==0){
       v=adc_read(1)/2;
       show2Digits((v/10),v%10);
       }else{
       v=(adc_read(2)*5)/1023;
       v2=(adc_read(3)*5)/1023;
       show2Digits(v,v2);
       }
   }
}