// This script is for House heating system involing and hybrid heat pump
// Heat los is based on conduction only. 

// Define U

Uwindows=1.1// [/W/m2K]
Udoors=3.4
UdoorsOnbekend=2.70
Udak=1/2.00 //because is given in Rc and U=1/Rc
Ugevels=1/1.69
Ugevelonbekend=1/2
Ufloor=1/3.5 // [/W/m2K] To be verified


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
SCOP_heatpump=4.7 //Seasonal Coefficient of Performance
Qheatpump=Qtotal/SCOP_heatpump
Qheatpump=(Qtotal/SCOP_heatpump)/1000

//Prepare dinamic simulation
rho_air=1,29
VolHous=603
Atotal=Awindows+Adoors+Agevels+Agevelonbekend+Adak+Afloor
Cair=1005


