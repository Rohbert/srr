/*Spawn a chunk right of view
Chunks are 40 tiles wide

*/


/*
SpawnObject takes: 
arguments: type, x, y, width, height
types: 0=wall,  1=static enemy, 2 = coin

*/
testArray[0,0]=1;
testArray[1,0]=0;
testArray[1,1]=1;
testArray[1,2]=30;
testArray[1,3]=9;
testArray[1,4]=3;
testArray[2,0]=2;
testArray[2,1]=12;

var areaList;
switch(currentArea){
    case "Grass": areaList = grass_chunkList; break;
    case "Underwater": areaList = underwater_chunkList; break;
    case "Sky": areaList = sky_chunkList; break;
    case "Cave": areaList = cave_chunkList; break;
    case "Space": areaList = space_chunkList; break;
}

chunkIndex = irandom(ds_list_size(areaList)-1);
chunkArray = ds_list_find_value(areaList,chunkIndex);

chunkArraySize = array_height_2d(chunkArray);
var i=0;
for(i=1;i<chunkArraySize;i+=1){
    objectType = chunkArray[i,0];
    objectX = chunkArray[i,1];
    objectY = chunkArray[i,2];
    objectWidth = chunkArray[i,3];
    objectHeight = chunkArray[i,4];
    
    spawnChunkObject(objectType,objectX,objectY,objectWidth,objectHeight);
}

//error = error - error;

