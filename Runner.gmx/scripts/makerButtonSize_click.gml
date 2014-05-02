//This buttton increase/decrease the width/height of selected maker Object 
switch(dimension){
    case 0: with(Obj_makerObject){
                if(selected){
                    width+=1;
                    updateMakerObject();
                }
            }
            break;
    case 1: with(Obj_makerObject){
                if(selected){
                    height+=1;
                    updateMakerObject();
                }
            }
            break;
    case 2: with(Obj_makerObject){
                if(selected){
                    width-=1;
                    updateMakerObject();
                }
            }
            break;
    case 3: with(Obj_makerObject){
                if(selected){
                    height-=1;
                    updateMakerObject();
                }
            }
            break;
}
