

 unsigned int ch;
 unsigned int v;
 void interrupt()
 {
 if(pir1.f5==1)
 {
   ch=uart1_read();
   if(ch=='1'){
   uart1_write_text("1 is pressed");
   v =((adc_read(2)*5)/1023);
   portb=v;
   pir1.f5=0;
   } else if(ch=='2')
  {
   uart1_write_text("2 is pressed");
   v=(adc_read(1)/2);
   portb=v;
   pir1.f5=0  ;
 }
 else{
    uart1_write_text("Invalid Option");
    portb=0;
 }

 }

 }

void main() {
  trisd=0;
  portd.f7=1;
  trisb=0;
  uart1_init(9600);
  intcon=0XC0;
  PIE1=0X20;
  PIR1=0;

  
  while(1){}

}