#line 1 "C:/Users/Interface/Desktop/Interface labworks/Labwork1/sec1/q2/q2.c"
void main() {
 unsigned int value;
 trisD=0x0E;
 portD.F7 =1;
 trisB=0;
 portB=0;
 while(1){
 value = (portD>>1)& 0x07;
 portB = value<<5;
 portB.F0 = !(value%2);
 }
}
