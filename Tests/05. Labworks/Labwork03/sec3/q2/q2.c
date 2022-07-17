void main() {
 unsigned int RevNo;
 unsigned int i;
 trisc.f0=1;
 trisc.f1=0;
 trisc.f2=0;
 trisd=0x0E;
 trisd.f7=0;
portD.F7=1;
trisb=0;

 while(1){
 RevNo=(portd & (0x0E));
 portb=RevNo;
 portc.f1=0;
 portc.f2=1;
 for(i=1;i<=3*RevNo;i++){
 while(portc.f0==0){}
 while(portc.f0==1){}
 
 }
 portc.f1=1;
 delay_ms(5000);
 }
 
 

}