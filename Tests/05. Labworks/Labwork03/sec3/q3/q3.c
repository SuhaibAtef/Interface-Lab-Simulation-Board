void main() {

     unsigned int V1;
     unsigned int i;
     TRISC.F1=0;
     TRISC.F2=0;

     while(1){
     V1=(ADC_read(2)*5)/1023;
     if(V1<=2){
     for(i=1;i<=65;i++){
     PORTC.F2=0;
     PORTC.F1=1;
     }
     for(i=65;i<=100;i++){
     PORTC.F2=0;
     PORTC.F1=0;
     }
     }else{
     for(i=1;i<=85;i++){
     PORTC.F2=0;
     PORTC.F1=1;
     }
     for(i=85;i<=100;i++){
     PORTC.F2=0;
     PORTC.F1=0;
     }
     }

     }
}