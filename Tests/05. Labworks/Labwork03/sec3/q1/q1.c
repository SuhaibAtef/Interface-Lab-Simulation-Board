void main() {

     unsigned int V1;
     TRISC.F1=0;
     TRISC.F2=0;
     TRISC.F0=1;
     while(1){
     V1=(ADC_read(3)*5)/1023;
     if(V1<2){
     
     PORTC.F1=1;
     PORTC.F2=0;
     delay_ms(3000);
     PORTC.F1=0;
     PORTC.F2=0;
     delay_ms(3000);
     
     } 
     if(V1==3){
     
     PORTC.F1=0;
     PORTC.F2=0;
     
     } 
     if(V1>3){
     
     PORTC.F1=0;
     PORTC.F2=1;
     delay_ms(2000);
     PORTC.F1=0;
     PORTC.F2=0;
     delay_ms(2000);
     }
     }
}