#line 1 "C:/Users/suhai/OneDrive/Desktop/InterfaceLab/Tests/Labworks/Labwork01/sec1/q3/q3.c"
unsigned mapping(unsigned int num){
 switch(num){
 case 0:
 return 0xFC ;
 case 1:
 return 0x60;
 case 2:
 return 0xDA;
 case 3:
 return 0xF2;
 }
}

void main() {
 unsigned int x,y;
 trisB=0;
 trisD= 0x0F;
 portB=0;
 portD.F4=1;
 portD.F5=0;
 portD.F7=0;
 while(1){
 x = (portD>>2)&0x03;
 y = (portD)&0x03;
 portB= mapping(x);
 portD.F4=0;
 portD.F5=1;
 delay_ms(100);
 portB= mapping(y);
 portD.F4=1;
 portD.F5=0;
 delay_ms(100);
 }
}
