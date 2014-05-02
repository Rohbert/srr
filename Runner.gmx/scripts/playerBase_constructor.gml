// Superclass constructor script

// playerBase Attributes 
image_speed = 0;
image_index = 0;
image_angle=0;
actionButton1Pressed = 0;
actionButton1Held = 0;
actionButton2Pressed = 0;
actionButton2Held = 0;
coinCount = 0;
coinStreak = 0;
powerCoolDown = 0;

// playerBase Physics Values
gravityPower = 0;  // magnitude
gravity_direction = 270; //0-359
onGround = 0;
hspeed = 0;
vspeed = 0;

// playerBase Suit Speed
playerSpeed = 0;

// Player dimension bounds
x_bound_left = -sprite_width/2;
x_bound_right = room_width + sprite_width/2;
y_bound_top = -sprite_height/2;
y_bound_bottom = room_height + sprite_height/2;


// player power timer
powerDuration = 0; // max length of power
powerTracker = 0; // how long that power has remaining
powerState = 0; // if power is active
powerCooldown = 0; // cd left until you can use power again
powerCooldownMax = 0; // max CD

//where are you
switch(room){
    case Room_Grass : currentArea = "Grass"; break;
    case Room_Underwater : currentArea = "Underwater"; break;
    case Room_Sky : currentArea = "Sky"; break;
    case Room_Cave : currentArea = "Cave"; break;
    case Room_Space : currentArea = "Space"; break;
}

