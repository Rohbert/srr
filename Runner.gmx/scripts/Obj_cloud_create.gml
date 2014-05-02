//Start moving at random speed 
deltaSize = random_range(.5,1.5);

hspeed=-playerSpeed*deltaSize;
image_xscale=deltaSize;
image_yscale=deltaSize;
depth=1;

//If cloud is moving faster than player, than its in foreground
if(hspeed<-playerSpeed){
    depth=-1;
    
}  
