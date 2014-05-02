//Gust script
if(!powerCooldown){ //check is CD active
    instance_create(x,y,Obj_powerGust); // create gust sprite    
    gravity = 0;
    vspeed = 0;
    flapPower = 0;
    powerCooldown = powerCooldownMax;    //set cooldown
    actionButton2Pressed=0;
}
