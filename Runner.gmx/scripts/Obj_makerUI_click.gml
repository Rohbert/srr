//Click global
//If mouse over an existing object, dont create a object, instead select this
if(position_meeting(mouse_x,mouse_y,Obj_makerObject)){
    //Deselect all other maker objects
    with(Obj_makerObject){
        selected=0;
    }
    //Set selected for instance under mouse
    with(instance_position(mouse_x,mouse_y,Obj_makerObject)){
        selected=1;
    }
    //Exit and dont proceed with makerObject creation
    exit;
}
if(createThis and mouse_y<makerControlsY){
    newObj = instance_create(mouse_x-8,mouse_y-8,Obj_makerObject);
    with(Obj_makerObject){
        selected=0;
    }
    with(newObj){
        image_speed=0;
        sprite_index = createThis;
        move_snap(16,16);
        selected=1;
        
    }
    createThis=-1;
    cursor_sprite=-1;
}
