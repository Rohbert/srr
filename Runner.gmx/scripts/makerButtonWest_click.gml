//Move chunk view a bit to the left
view_xview[0]-=64; //Move 64/16 = 4 Tiles
if((view_xview[0])<minChunkWidth){
    view_xview[0]=minChunkWidth;
}
