// Smooth out dive to float
if(vspeed > -floatPower) {
    if(vspeed > 0) {
        vspeed = 0;
    }
    vspeed -= floatCtr;
    floatCtr += 0.1;
} else {
    vspeed = -floatPower;
    floatCtr = 0;
}
