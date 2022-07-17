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
unsigned char temp;
char x[3];
trisd.f7=0;
trisb=0;
portd.f7=1;
lcd_init();


temp=adc_read(1)/2;
portb=temp;
delay_ms(2000);
lcd_out(1,1,"temp = ");
ByteToStr(temp,x);
lcd_out_cp(x);
lcd_out_cp(" C.");

}