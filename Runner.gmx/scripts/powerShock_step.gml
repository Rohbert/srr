// Step script for powerShock object

//If player does not exists, destory self and exit script
if(!instance_exists(Obj_playerBase)){
    instance_destroy();
    exit;
    }
    
//Player does exist, so update location and powerTracker variable will exist
x = Obj_playerBase.x;
y = Obj_playerBase.y;


if(!Obj_playerBase.powerTracker){
    instance_destroy();
    Obj_playerBase.powerState = 0;
} else {
    if(Obj_playerBase.powerTracker){
        Obj_playerBase.powerTracker -= 1;
    }
}
