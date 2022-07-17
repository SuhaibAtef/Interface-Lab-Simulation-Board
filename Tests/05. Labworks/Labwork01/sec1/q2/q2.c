void main() {
     unsigned int value;
     trisD=0x0E;
     portD.F7 =1;
     trisB=0;
     portB=0;
     while(1){
     value = (portD>>1)& 0x07;
     portB = value<<5;
     //portB.F0 = !(value%2);
     if(value%2==0)
     portB.F0 = 1;
     else
     portB.F0 = 0;
     }
}