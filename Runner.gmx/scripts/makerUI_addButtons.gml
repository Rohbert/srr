//Create Chunk maker UI buttons
buttonX = 16;
buttonDelta = 48;
buttonY = makerControlsY + 16;

//Change object dimension buttons
//Dimension 0: increase width    1: increase height     2: decrease width       3: decrease height  
buttonY+=buttonDelta;
sizeButton1 = instance_create(buttonX+16,buttonY,Obj_makerButtonSize);
sizeButton1.dimension = 3;
buttonY+=buttonDelta;
sizeButton2 = instance_create(0,buttonY,Obj_makerButtonSize);
sizeButton2.dimension = 2;
buttonX+=buttonDelta;
sizeButton3 = instance_create(buttonX,buttonY,Obj_makerButtonSize);
sizeButton3.dimension = 0;
buttonX-=buttonDelta;
buttonY+=buttonDelta;
sizeButton4 = instance_create(buttonX+16,buttonY,Obj_makerButtonSize);
sizeButton4.dimension = 1;



//Create object buttons
buttonX+=buttonDelta*3;
buttonY = makerControlsY + 16;

drawObject1 = instance_create(buttonX, buttonY, Obj_makerButtonDraw);
drawObject1.sprite_index = Spr_grassWall;

drawObject2 = instance_create(buttonX, buttonY+buttonDelta, Obj_makerButtonDraw);
drawObject2.sprite_index = Spr_coinRed;

drawObject3 = instance_create(buttonX, buttonY+buttonDelta*2, Obj_makerButtonDraw);
drawObject3.sprite_index = Spr_enemy1;

buttonX+=buttonDelta*1;
buttonY = makerControlsY + 16;

drawObject4 = instance_create(buttonX, buttonY, Obj_makerButtonDraw);
drawObject4.sprite_index = Spr_grassLedge;

drawObject5 = instance_create(buttonX, buttonY+buttonDelta*2, Obj_makerButtonDraw);
drawObject5.sprite_index = Spr_enemy2;


//Move Object Buttons
buttonX = buttonDelta*6;
buttonY = makerControlsY + 16;
buttonY+=buttonDelta;
moveButton1 = instance_create(buttonX+16,buttonY,Obj_makerButtonMove);
moveButton1.dimension = 4;
buttonY+=buttonDelta;
moveButton2 = instance_create(buttonX-16,buttonY,Obj_makerButtonMove);
moveButton2.dimension = 5;
buttonX+=buttonDelta;
moveButton3 = instance_create(buttonX,buttonY,Obj_makerButtonMove);
moveButton3.dimension = 6;
buttonX-=buttonDelta;
buttonY+=buttonDelta;
moveButton4 = instance_create(buttonX+16,buttonY,Obj_makerButtonMove);
moveButton4.dimension = 7;

buttonX += buttonDelta*3;
buttonY = makerControlsY + 16;
levelButton1 = instance_create(buttonX,buttonY,Obj_makerButtonLevel);

buttonY += buttonDelta;
chunkButton1 = instance_create(buttonX,buttonY,Obj_makerButtonChunkChange);
chunkButton1.dimension =8;

buttonX += buttonDelta;
chunkButton2 = instance_create(buttonX,buttonY,Obj_makerButtonChunkChange);
chunkButton2.dimension =9;

//Update buttons
with(Obj_makerButtonSize)
    updateMakerButtonSprite();
with(Obj_makerButtonMove)
    updateMakerButtonSprite();
with(Obj_makerButtonChunkChange)
    updateMakerButtonSprite();
