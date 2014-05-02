//Move chunk view a bit to the right
view_xview[0]+=64; //Move 64/16 = 4 Tiles
if((view_xview[0]+view_wview[0])>maxChunkWidth){
    view_xview[0]=maxChunkWidth-view_wview[0];
}
