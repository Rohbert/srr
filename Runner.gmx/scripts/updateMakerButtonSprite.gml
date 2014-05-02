//Dimension 0: increase width    1: increase height     2: decrease width       3: decrease height  
//Move 4: move Up    5: Move left    6: move right    7: move down
//Chunk Change  8:previous  9: next

switch(dimension){
    //Dimension buttons
    case 0: image = 14;
            break;
    case 1: image = 18;
            break;
    case 2: image = 16;
            break;
    case 3: image = 20;
            break;
    //Move buttons
    case 4: image = 12; image_angle=0;
            break;
    case 5: image = 12; image_angle=90;  y+=sprite_height;
            break;
    case 6: image = 12; image_angle=-90; x+=sprite_width;
            break;
    case 7: image = 12; image_yscale=-1; y-=sprite_height;
            break;
    case 8: image = 4;
            break;
    case 9: image = 6;
            break;
}
buttonOffSpr = image;
buttonOnSpr = image+1;
image_index = image;
