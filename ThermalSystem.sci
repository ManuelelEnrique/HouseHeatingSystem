// This script is for House heating system involing and hybrid heat pump
// Heat los is based on conduction only. 

// Define U

Uwindows=2.9 // [/W/m2K]
Udoors=3.4
UdoorsOnbekend=2.70
Udak=1/2.00 //because is given in Rc and U=1/Rc
Ugevels=1/1.69
Ugevelonbekend=1/2
Ufloor=1/3.5 // [/W/m2K] Tobe verified


//Define Areas
Awindows=675
Adoors=2.0+1.3+1.8
Agevels=15.8+30.1+1.3+16.2+34.1+1.3
Agevelonbekend=4.9
Adak=121.3
Afloor=90.6

//Define Temperatures
Tinside=20+273 //Kelvin
Toutside=-10+273 //Kelvin

//Calculate Heat Losses
Qwindows=Uwindows*Awindows*(Tinside-Toutside)
Qdoors=Udoors*Adoors*(Tinside-Toutside)
Qgevels=Ugevels*Agevels*(Tinside-Toutside)  
Qgevelonbekend=Ugevelonbekend*Agevelonbekend*(Tinside-Toutside)
Qdak=Udak*Adak*(Tinside-Toutside)
Qfloor=Ufloor*Afloor*(Tinside-Toutside)
Qtotal=Qwindows+Qdoors+Qgevels+Qgevelonbekend+Qdak+Qfloor
//print("Total Heat Loss (W): ", Qtotal)
//Define Heat Pump properties
COP_heatpump=4.0 //Coefficient of Performance
SCOP_heatpump=4.78 //Seasonal Coefficient of Performance
Qheatpump=Qtotal/COP_heatpump
//print("Heat Pump Output Required (W): ", Qheatpump)
//Define Auxiliary Heater properties
COP_auxiliary=1.0 //Electric resistance heater  

