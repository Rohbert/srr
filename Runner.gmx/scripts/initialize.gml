//Global variables
globalvar playerSpeed,coinCount,currentArea,buttonDivider,action1String,action2String;

//Define chunks
defineChunks();

//Player speed is defined as a global since all objects in a room must reference this variable
playerSpeed=0;
//Coin Count hold total coins collected this level
coinCount=0;
//Current area being played, default explicitly set to Grass
currentArea="Grass";

buttonDivider = room_width/2;

//Action Text
action1String="Action1";
action2String="Action2";

