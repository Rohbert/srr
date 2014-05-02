// Step script called by native Step event

//Get inputs
playerBase_getInputs();

//Underwater Movement

// Check for collision with wall in front of player
if(place_meeting(x+playerSpeed,y,Obj_master_wall)){
    //move player back at same speed as wall (since wall is going at playerSpeed)
    hspeed = -playerSpeed;    
    } 
else{//No wall in front and player is behind starting x
    if(x < xstart) {
        hspeed = 1;
        }
    else{//Stop player from advancing once at stating x
        hspeed = 0;
        }
    }

//Hold down to increase player vspeed up until it equals divePower
if(actionButton1Held){
    dive(divePower);
}
else{//When not 'diving' decrease player vspeed gradually
    smoothFloat();
    image_angle=diveAngle;
}

//Click alternate action
if(actionButton2Pressed){
    shock(shockRange);
}
    
//Check for collision above and below player (y+vspeed will check for both cases)
if(place_meeting(x,y+vspeed,Obj_master_wall)){
    //if moving DOWN, when colliding, move to contact floor  
    if(vspeed > 0) {
        move_contact_all(270,20);
    } else {//if moving UP, when colliding, move to contact ceiling
        move_contact_all(90,20);
    }
    //Stop constant bobbing behavior
    vspeed = 0;
    //Prevent clipping into walls when diagonal movement isin't caught by previous collision checks 
    move_outside_solid(180,1);
    //We are touching a wall, let player know
    //image_angle=0; 
} else {
    
    //No vertical collisions, 
    //image_index=0; 
    
}
    
// Check if player has left room bounds and kills him
inRoom(0);

if(powerCooldown){
    powerCooldown -= 1; // power cool down
}

//At End of all player actions reset pressed inputs
clearInputs();
