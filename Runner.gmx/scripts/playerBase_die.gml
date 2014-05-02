// Script called on player death
playerSpeed=0;
Obj_master_all.hspeed = 0;
//Get view origin, add half view dimensions. Now Game over obj will always be at center of screen
instance_create(view_xview[0]+(view_wview[0]/2), view_yview[0]+(view_hview[0]/2), Obj_gameOver);
instance_destroy();
