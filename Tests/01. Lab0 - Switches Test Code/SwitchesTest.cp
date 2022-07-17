#line 1 "C:/Users/suhai/OneDrive/Desktop/InterfaceLab/Tests/SwitchesTest/SwitchesTest.c"
void main()
{
TRISB=0xFF;
TRISD=0B00001111;
PORTD.F7=1;
while(1)
 {PORTB= PORTD<<4 ; }
}
