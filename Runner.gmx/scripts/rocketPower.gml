// Thrust power

//1, thrustPowerCont, thrustEnergy);}
thrustEnergy = argument[2];
switch(argument[0]) 
{
    case 1:
        vspeed -= argument[1];
        break;
        
    case 2:
        vspeed += argument[1];
        break;
        
    case 3:
        vspeed -= argument[1];
        actionButton1Pressed = 0;
        break;
        
    case 4:
        vspeed += argument[1];
        actionButton1Pressed = 0;
        break;
}
