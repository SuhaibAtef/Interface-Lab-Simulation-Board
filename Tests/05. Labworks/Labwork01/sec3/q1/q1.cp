#line 1 "C:/Users/Interface/Desktop/RamiSuhaib/Labwork1/q1/q1.c"
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

void main() {
 int i;
 TRISB =0;
 TRISD =0 ;
 PORTD.F4=0;
 PORTD.F5=1;
 while(1){
 for(i=0;i<10;i++){
 PORTB = mapping(i);
 delay_ms(1000);
 }
 delay_ms(2000);
 }
}
