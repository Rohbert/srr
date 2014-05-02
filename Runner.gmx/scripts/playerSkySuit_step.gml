// Step script called by native Step event

//Get inputs
playerBase_getInputs();
//Movement

//Check if wall underneath
if(place_meeting(x,y+vspeed,Obj_master_wall)){
    //On Ground, able to jump
    move_contact_all(270,36);
    vspeed=0;
    onGround=1;
    gravity=0;  
    image_index=1; 
}
else if(place_meeting(x,y+vspeed,Obj_enemy1)){
    //On top of Enemy, bounce off
    move_contact_all(270,12);
    vspeed=-bouncePower;
    onGround=0;
    //gravity=0;  
    //image_index=1; 
}
else{
    if(!instance_exists(Obj_powerGust)) { // check if gusting
        //In air, fall appropriately
        onGround=0;
        image_index=0; 
        if(actionButton1Held){
            if(vspeed){
                gravity = 0;//Deactivate gravity completely and set linear fall speed of glideSpeed
                vspeed=glideSpeed;
            }else{
                gravity = gravityPower;
            }
        }
        else{
            gravity = gravityPower;
        }
    }
}

// Check for collision with wall on the right of player
if(place_meeting(x+5,y,Obj_master_wall)){
    playerBase_die();
}

// Check if player has fallen to death
if(y > y_bound_bottom || y < y_bound_top){
    playerBase_die();
}

//Check if Jump Pressed
if(actionButton1Pressed){
    flap(1,-flapPower);
    actionButton1Pressed=0;
    
}

//Click alternate action
if(actionButton2Pressed){
    gust(gustRange);
}

if(powerCooldown){
    powerCooldown -= 1; // power cool down
}

clearInputs();
