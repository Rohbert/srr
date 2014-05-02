// Step script called by native Step event

//Get inputs
playerBase_getInputs();

//Movement

// Check for collision with wall on the right of player
if(place_meeting(x+5,y-2,Obj_master_wall)){
    playerBase_die();
}

// Check if player has fallen to death
if(y > y_bound_bottom || y < y_bound_top){
    playerBase_die();
}

//Check if Jump Pressed
if(actionButton1Held){
	rocketPower(1, thrustPowerCont, thrustEnergy);}

if(actionButton2Held){
	rocketPower(2, thrustPowerCont, thrustEnergy);}

if(actionButton1Pressed){
	rocketPower(3, thrustPower, thrustEnergy);}

if(actionButton2Pressed){
	rocketPower(4, thrustPower, thrustEnergy);}

clearInputs();
