 // lcd module connections
sbit LCD_RS at RB1_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS_DIRECTION at TRISB1_bit;
sbit LCD_EN_DIRECTION at TRISB3_bit;
sbit LCD_D4_DIRECTION at TRISB4_bit;
sbit LCD_D5_DIRECTION at TRISB5_bit;
sbit LCD_D6_DIRECTION at TRISB6_bit;
sbit LCD_D7_DIRECTION at TRISB7_bit;

void main() {
short temp;
char x[5];
lcd_init();
delay_ms(2000);
temp=(ADC_Read(1)*500)/1023 ;
while(1){
temp=(ADC_Read(1)*500)/1023 ;
lcd_out(1,1,"temp = ");
ShortToStr(temp,x);
lcd_out_cp(x);
lcd_out_cp(" C.");
trisd.f7=0;
portd.f7=1;
portb=temp;
delay_ms(1000);
Lcd_Cmd(_LCD_CLEAR);
}
}