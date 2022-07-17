void main()
{
TRISB=0;
TRISD.F4=0;
TRISD.F5=0;
while(1)
{
PORTB=0xF2;
PORTD.F4=0;
PORTD.F5=1;
delay_ms(50);
PORTB=0X60;
PORTD.F4=1;
PORTD.F5=0;
delay_ms(50);
}
}