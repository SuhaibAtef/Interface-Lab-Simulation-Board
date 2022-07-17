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

int isPrime(short int n){
     int i;
     for( i=2;i<n;i++){
     if(n%i==0){
     return 0;
     }
     }
     return 1;
}


void main() {
   short int num;
   char text[4];
   LCD_init();
   LCD_cmd(_LCD_clear);
   trisD=0x0F;
   LCD_out_CP(" is Prime");
   while(1){
   num = (portD)&0x0F;
   bytetostr(num,text);
   LCD_out(2,2,text);
   if(isPrime(num)){
     LCD_out_CP(" is Prime");
   }else{
     LCD_out_CP(" is NOT Prime");
   }

   }
}