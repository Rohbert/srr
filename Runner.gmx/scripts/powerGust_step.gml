// Step script for powerGust object
if(instance_exists(Obj_playerBase)){
    if(!Obj_playerBase.powerTracker){
        instance_destroy();
        Obj_playerBase.powerState = 0;
        Obj_playerBase.flapPower = Obj_playerBase.flapPowerMax;
    } else {
        if(Obj_playerBase.powerTracker){
            Obj_playerBase.powerTracker -= 1;
        }
    }
}
