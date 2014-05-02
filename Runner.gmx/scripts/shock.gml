// Shock script 

if(!instance_exists(Obj_powerShock)){ // check if shield is up
    if(!powerCooldown){ //check is CD active
        instance_create(x,y,Obj_powerShock); // create shield sprite    
        powerCooldown = powerCooldownMax;    //set cooldown
    }
}
