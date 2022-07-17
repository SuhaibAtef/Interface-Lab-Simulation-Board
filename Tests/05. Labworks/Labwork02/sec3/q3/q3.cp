#line 1 "C:/Users/Interface/Desktop/RamiSuhaib/Labwork2/q3/q3.c"
void show_seven(char y){
 unsigned int Left;
 unsigned int Right;
 if (y=='G') {Left=0xF6;}else {Left=0x1C;}
 Right=0x1E;
 while(1){
 PORTB=Left;
 PORTD.F4=0;
 PORTD.F5=1;
 delay_ms(10);
 PORTB=Right;
 PORTD.F4=1;
 PORTD.F5=0;
 delay_ms(10);
 }
}


void main() {
 unsigned int POT1;
 unsigned int POT2;
 TRISD.F1=1;
 TRISC.F2=0;
 TRISD.F4=0;
 TRISD.F5=0;
 TRISB=0;
 if(PORTD.F1==1){
 POT1 = (ADC_Read(2) * 5)/1023 ;
 POT2 = (ADC_Read(3) * 5)/1023 ;
 if (POT1>POT2){
 show_seven('G');
 }else if (POT1<POT2){
 show_seven('L');
 } else{
 PORTD.F4=0;
 PORTD.F5=0;
 PORTB=0;
 PORTC.F2=1;
 delay_ms(3000);
 PORTC.F2=0;
 }
 }

}
