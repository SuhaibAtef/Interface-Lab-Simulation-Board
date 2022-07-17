#line 1 "C:/Users/Interface/Desktop/RamiSuhaib/Labwork1/q3/q3.c"
 unsigned mapping(unsigned num){
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
void showNumbers(unsigned int m1,unsigned int m2) {
 int i =100;
 while(i){
 PORTB= mapping(m2);
 PORTD.F4=1;
 PORTD.F5=0;
 delay_ms(10);
 PORTB= mapping(m1);
 PORTD.F4=0;
 PORTD.F5=1;
 delay_ms(10);
 i=i-1;
 }
}
void main() {
 unsigned int i;
 unsigned int firstMark=98;
 unsigned int secondMark=51;
 TRISB =0;
 TRISD =0 ;

 while(1){

 showNumbers(firstMark/10,firstMark%10);
 delay_ms(100);

 showNumbers(secondMark/10,secondMark%10);
 delay_ms(100);
 }
}
