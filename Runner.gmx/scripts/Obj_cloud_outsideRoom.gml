//Move cloud back to room right edge and at random height difference and reset size/depth
x = room_width;
y=ystart + irandom_range(-100,100);
depth=1;
image_alpha=1;

deltaSize = random_range(.5,1.5);
image_xscale=deltaSize;
image_yscale=deltaSize;

hspeed=-playerSpeed*deltaSize;

//If cloud is moving faster than player, than its in foreground
if(hspeed<-playerSpeed){
    depth=-1;
    image_alpha=.75;
    
}  


