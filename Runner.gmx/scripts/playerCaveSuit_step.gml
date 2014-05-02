// Step script called by native Step event

//Get inputs
playerBase_getInputs();

//Movement
//Check for ledge underneath
if(place_meeting(x,y+vspeed+1,Obj_master_ledge)){
    thisLedge = instance_place(x,y+vspeed+1,Obj_master_ledge);
    if(vspeed>0 and bbox_bottom < thisLedge.bbox_top){
        //On Ledge, able to jump
        move_contact_all(270,36);
        //y=thisLedge.y-sprite_xoffset;
        vspeed=0;
        onGround=1;
        gravity=0;  
        image_index=1; 
    }
}  //Check if wall underneath
else if(place_meeting(x,y+vspeed,Obj_master_wall)){
    //On Ground
    move_contact_all(270,36);
    vspeed=0;
    onGround=1;
    gravity=0;  
    image_index=1; 
}
else if(place_meeting(x,y+vspeed,Obj_enemy1)){
    //On top of Enemy, bounce off
    move_contact_all(270,12);
    onGround=0;
}
else{
    if(!instance_exists(Obj_powerTackle)){
        //In air, fall appropriately
        onGround=0;
        gravity = gravityPower;
    }
}

// Check for collision with wall on the right of player
if(place_meeting(x+5,y-2,Obj_master_wall)){
    playerBase_die();
}

// Check if player has fallen to death
if(y > y_bound_bottom){
    playerBase_die();
}

//Check if Jump Held
if(actionButton1Held){
    rocketThrust(thrustPower);
}

//Click alternate action
if(actionButton2Pressed){
    tackle(tackleRange);
}

//Go back to start
if(!instance_exists(Obj_powerTackle)) {
    if(x > xstart) {
        hspeed = -playerSpeed; //Simulate stop player after a tackle
    } else {
        hspeed = 0;
    }
}
    
if(powerCooldown){
    powerCooldown -= 1; // power cool down
}

clearInputs();
