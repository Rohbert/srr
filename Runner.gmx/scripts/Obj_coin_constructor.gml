//Delete any coin underneath
if(place_meeting(x,y,Obj_coin)){
    with(instance_place(x,y,Obj_coin)){
        instance_destroy();
    }
}

//Set random color
sprite_index = choose(Spr_coinRed,Spr_coinYellow,Spr_coinPurple);
//Start moving
hspeed=-playerSpeed;
