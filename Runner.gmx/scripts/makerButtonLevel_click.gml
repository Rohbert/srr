//This buttton increase/decrease the width/height of selected maker Object 
switch(makerLevel){
    case "Grass": makerLevel="Underwater"; background_index[0]=Bg_underwater;background_htiled[0]=false;
            break;
    case "Underwater": makerLevel="Sky"; background_index[0]=Bg_sky2;background_htiled[0]=false;
            break;
    case "Sky": makerLevel="Cave"; background_index[0]=Bg_cave1;background_htiled[0]=false;
            break;
    case "Cave": makerLevel="Space"; background_index[0]=Bg_space1;background_htiled[0]=true;
            break;
    case "Space": makerLevel="Grass"; background_index[0]=Bg_sky1; background_htiled[0]=false;
            break;
}

if(background_htiled[0]==false){
    background_xscale[0] = 1 * (room_width / background_width[0]);
    background_yscale[0] = 1 * (view_hview[0] / background_height[0]);
    makerGridColor = c_black;
    
}
else{
     background_xscale[0] = 1;
    background_yscale[0] = 1 * (view_hview[0] / background_height[0]);
    makerGridColor = c_gray;
}
