//Create a makerObject object given parameters read from chunkFile

//instance_create(chunkLeft+(argument[1]*tileSize)+(i*tileSize),(argument[2]*tileSize)+(k*tileSize),newObj);
/*
for(i=0;i<fileObjectWidth;i+=1)
    for(k=0;k<fileObjectHeight;k+=1){
*/
image=Spr_cursorWall;
switch(fileObjectType){
    case 0: image=Spr_cursorWall; break;
    case 1: image=Spr_cursorEnemy1; break;
    case 2: image=Spr_cursorCoin; break;
    case 3: image=Spr_cursorLedge; break;
    case 4: image=Spr_cursorEnemy2; break;
}

newObj = instance_create(fileObjectX*makerTileSize, fileObjectY*makerTileSize,Obj_makerObject);
newObj.width=fileObjectWidth;
newObj.height=fileObjectHeight;
newObj.sprite_index = image;

