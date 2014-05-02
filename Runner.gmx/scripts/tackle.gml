// Tackle script

if(!instance_exists(Obj_powerTackle)){ // check if shield is up
    if(!powerCooldown){ //check is CD active
        hspeed = 15;
        vspeed = 0;
        gravity = 0;
        instance_create(x,y,Obj_powerTackle); // create shield sprite    
        powerCooldown = powerCooldownMax;    //set cooldown
        actionButton2Pressed=0;
    }
}
