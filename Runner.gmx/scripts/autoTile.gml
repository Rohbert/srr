//Set correct image index for walls
var areaSprite;

//All levels use grass tileset for now (debugging)
switch(currentArea){
    case "Grass": areaSprite = Spr_grassWall; break;
    case "Underwater": areaSprite = Spr_grassWall;break; //Spr_underwaterWall; break;
    case "Sky": areaSprite = Spr_grassWall; break //Spr_skyWall; break;
    case "Cave": areaSprite = Spr_grassWall; break //Spr_caveWall; break;
    case "Space": areaSprite = Spr_grassWall; break //Spr_spaceWall; break;
}
sprite_index = areaSprite;

var image=0;
walls ="";
var offset = 1;

if(position_meeting(bbox_left-offset,bbox_top-offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";

if(position_meeting(x,bbox_top-offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(bbox_right+offset,bbox_top-offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(bbox_left-offset,y,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(bbox_right+offset,y,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(bbox_left-offset,bbox_bottom+offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(x,bbox_bottom+offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";
if(position_meeting(bbox_right+offset,bbox_bottom+offset,Obj_master_wall))
    walls+="1";
else
    walls+="0";

/*
123
4x5
678
*/
switch(walls){
    case "00011111": case "00111111": case "10011111": image=0; break;
    case "11111111": image=1; break;
    case "01101011": case "01101111": case "11101011":image=2; break;
    case "11010110": case "11010111": case "11110110":image=3; break;
    case "00001011": case "00101011": case "00001111": image=4; break;
    case "00010110": case "10010110": case "00010111": image=5; break;
    case "01101000": case "11101000": case "01101001": image=6; break;
    case "11010000": case "11110000": case "11010100": image=7; break;
    case "11111000": case "11111100": case "11111001": image=8; break;
    case "01111111": image=9; break;
    case "11011111": image=10; break;
    case "11111011": image=11; break;
    case "11111110": image=12; break;
    default: image=13;
}    
image_index=image;

/*
//Block above
if(place_meeting(x,bbox_top-1,Obj_master_wall)){
    image_index=1;
    
    //No block below
    if(!place_meeting(x,bbox_bottom+1,Obj_master_wall)){
        image_index =8;
        }
    //No Block to the left
    if(!place_meeting(bbox_left-1,y,Obj_master_wall)){
        image_index=2;
        //No block below
        if(!place_meeting(x,bbox_bottom+1,Obj_master_wall)){
            image_index =6;
        }
    }
    //No Block to the right
    if(!place_meeting(bbox_right+1,y,Obj_master_wall)){
        image_index=3;
        //No block below
        if(!place_meeting(x,bbox_bottom+1,Obj_master_wall)){
            image_index =7;
        }
    }
}
//No Block Above  
else{
    //No block to the left / right
    if(!place_meeting(bbox_left-1,y,Obj_master_wall)){
        image_index=4;
    }
    if(!place_meeting(bbox_right+1,y,Obj_master_wall)){
        image_index=5;
    }
}
*/
