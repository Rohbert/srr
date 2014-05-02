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
}   //Check if wall underneath
else if(place_meeting(x,y+vspeed,Obj_master_wall)){
    //On Ground, able to jump
    move_contact_all(270,36);
    vspeed=0;
    onGround=1;
    gravity=0;  
    image_index=1; 
}
else if(place_meeting(x,y+vspeed,Obj_master_enemy)){
    //On top of Enemy, bounce off
    move_contact_all(270,12);
    vspeed=-bouncePower;
    onGround=0;
    //gravity=0;  
    //image_index=1; 
}
else{
    //In air, fall appropriately
    onGround=0;
    image_index=0; 
    if(actionButton1Held){
        if(!onGround){
            gravity = halfGravityPower;
            
        }
    }
    else{
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

//Check if Jump Pressed
if(actionButton1Pressed){
    jump(onGround,-jumpPower);
    sprite_index=Spr_playerGrass;
    powerState = 0;
    actionButton1Pressed=0;
}

//Check if alt action pressed
if(actionButton2Pressed){
    playerNoSuit_slide(onGround); //only allow sliding on ground, for now
    actionButton2Pressed=0;
}

// decrement slide length
if(powerTracker){
    powerTracker -= 1;
} else {
    sprite_index = Spr_playerGrass;
    powerState = 0;
}

clearInputs();
