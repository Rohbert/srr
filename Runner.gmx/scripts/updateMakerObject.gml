//Update the size of this makerObject
if(width<1)
    width=1;
if(height<1)
    height=1;
//Update the location of this makerObject
if(x<=0)
    x=0;
if(x>room_width-16)
    x=room_width-16;
if(y<0)
    y=0;
if(y>view_hview[0]-16)
    y=view_hview[0]-16;
    

