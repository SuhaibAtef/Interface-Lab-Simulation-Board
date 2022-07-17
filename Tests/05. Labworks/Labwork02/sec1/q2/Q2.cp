#line 1 "C:/Users/Interface/Desktop/Interface labworks/Labwork2/sec1/q2/Q2.c"

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
Lcd_Init();
int isPrime(short int n){
 int i;
 for( i=2;i<n;i++){
 if(n%i==0){
 return 0;
 }
 }
 return 1;
}
char txt1[] = "mikroElektronika";
char txt2[] = "EasyPIC6";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;

void Move_Delay() {
 Delay_ms(500);
}

void main(){
 Lcd_Init();

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,6,txt3);

 Lcd_Out(2,6,txt4);
 Delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);

 Lcd_Out(1,1,txt1);
 Lcd_Out(2,5,txt2);

 Delay_ms(2000);


 for(i=0; i<4; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }

 while(1) {
 for(i=0; i<8; i++) {
 Lcd_Cmd(_LCD_SHIFT_LEFT);
 Move_Delay();
 }

 for(i=0; i<8; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }
 }
}
