#line 1 "C:/Users/Interface/Desktop/RamiSuhaib/Labwork1/q2/q2.c"
unsigned int fact(unsigned int num)
{
unsigned int i ;
unsigned int f;
f=1;
 for(i=1;i<=num;i++){
 f=f*i;
 }
 return f;

}

void main() {
unsigned int num ;
unsigned int result;
TRISD= 0X07;
TRISB=0;
TRISC.f2=0b0;

portd=0;
PORTD.F7=1;
while(1){
num=portd&0x07 ;
portb=num<<5;
delay_ms(1000);
if(num<=5){
result=fact(num);
portb=result;
delay_ms(5000);
} else{
 portc.f2=1;
delay_ms(800);
portc.f2=0;

}
#line 47 "C:/Users/Interface/Desktop/RamiSuhaib/Labwork1/q2/q2.c"
}
}
