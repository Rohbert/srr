/*
Chunks are 40 tiles wide and 44 tiles high
LowerView is 22 tiles high

*/

//All Grass Area Chunks
grass_chunkList=ds_list_create();

//------Chunk 1------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,1,(bottomTile-3),9,3);
addChunkObject(0,15,(bottomTile-5),10,2);
addChunkObject(0,30,(bottomTile-7),7,1);
addChunkObject(1,8,(bottomTile-4),1,1);
addChunkObject(2,12,(bottomTile-8),1,1);
addChunkObject(2,26,(bottomTile-12),3,1);
addChunkObject(3,8,(bottomTile-9),6,1);
addChunkObject(3,20,(bottomTile-11),6,1);
addChunkObject(4,30,(bottomTile-13),1,1);
addChunkObject(4,32,(bottomTile-13),1,1);
//Chunk is ready to be inserted to chunk list
ds_list_add(grass_chunkList,currentChunk);


//------Chunk 2------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 2;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,3,(bottomTile-4),5,5);
addChunkObject(0,11,(bottomTile-6),3,7);
addChunkObject(0,16,(bottomTile-3),10,4);
addChunkObject(0,30,(bottomTile-5),8,6);
addChunkObject(2,15,(bottomTile-8),1,4);
addChunkObject(2,20,(bottomTile-5),3,1);
addChunkObject(3,4,(bottomTile-8),4,1);
addChunkObject(3,10,(bottomTile-10),4,1);
addChunkObject(3,16,(bottomTile-12),4,1);
addChunkObject(3,22,(bottomTile-14),4,1);
addChunkObject(3,28,(bottomTile-16),4,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(grass_chunkList,currentChunk);


//------Chunk 3------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 3;
//Chunk Objects
currentObjectIndex=0; //Staircase
addChunkObject(0,4,(bottomTile-5),3,3);
addChunkObject(0,10,(bottomTile-8),3,4);
addChunkObject(0,16,(bottomTile-11),3,5);
addChunkObject(0,22,(bottomTile-14),3,6);
addChunkObject(0,28,(bottomTile-17),3,7);
addChunkObject(0,34,(bottomTile-21),3,8);
addChunkObject(2,17,(bottomTile-12),1,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(grass_chunkList,currentChunk);


//------Chunk 4------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;  //Long straight one enemy
addChunkObject(0,2,(bottomTile-5),38,3);
addChunkObject(1,20,(bottomTile-6),1,1);
addChunkObject(2,30,(bottomTile-18),1,1);
addChunkObject(3,6,(bottomTile-9),5,1);
addChunkObject(3,18,(bottomTile-9),5,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(grass_chunkList,currentChunk);
