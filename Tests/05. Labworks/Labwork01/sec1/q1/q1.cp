#line 1 "C:/Users/Interface/Desktop/Interface labworks/Labwork1/sec1/q1/q1.c"
void main() {
 trisB = 0x00;
 trisD.F7=0;
 portD.F7=1;
 trisC.F2 = 0;
 portC.F2=0;
 portB = 0x06;

 while(1){
 if(portB == 0x1F){
 portC.F2=1;
 delay_ms(2000);
 portB =0;
 portC.F2=0;
 }else{
 portB =portB+1;
 delay_ms(550);
 }
 }
}
