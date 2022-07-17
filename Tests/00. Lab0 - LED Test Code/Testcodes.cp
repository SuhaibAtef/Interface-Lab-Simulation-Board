#line 1 "C:/Users/suhai/OneDrive/Desktop/InterfaceLab/Tests/TestCode/Testcodes.c"
void main()
{
TRISB=0X00;
TRISD.F7=0;
PORTD.F7=1;
while(1)
 { PORTB=0XAA;
 Delay_ms(1500);
 PORTB=0x55;
 Delay_ms(1500);
}
}
