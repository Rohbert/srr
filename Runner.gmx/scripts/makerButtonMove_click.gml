//This buttton increase/decrease the width/height of selected maker Object 
switch(dimension){
    case 4: with(Obj_makerObject){
                if(selected){
                    y-=16;
                    updateMakerObject();
                }
            }
            break;
    case 5: with(Obj_makerObject){
                if(selected){
                    x-=16;
                    updateMakerObject();
                }
            }
            break;
    case 6: with(Obj_makerObject){
                if(selected){
                    x+=16;
                    updateMakerObject();
                }
            }
            break;
    case 7: with(Obj_makerObject){
                if(selected){
                    y+=16;
                    updateMakerObject();
                }
            }
            break;
}
