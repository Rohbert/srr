/*
Chunks are 40 tiles wide and 44 tiles high
LowerView is 22 tiles high

*/

//All Cave Area Chunks
cave_chunkList=ds_list_create();

//------Chunk 1------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,0,(bottomTile-1),40,3);
addChunkObject(0,1,(bottomTile-5),9,5);
addChunkObject(3,4,(bottomTile-8),5,1);
addChunkObject(3,14,(bottomTile-8),6,1);


//Chunk is ready to be inserted to chunk list
ds_list_add(cave_chunkList,currentChunk);


//------Chunk 2------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 2;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,0,(bottomTile-2),40,3);
addChunkObject(0,3,(bottomTile-4),5,5);
addChunkObject(0,21,(bottomTile-6),3,7);

addChunkObject(3,15,(bottomTile-8),10,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(cave_chunkList,currentChunk);


//------Chunk 3------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 3;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,0,(bottomTile-4),40,5);
addChunkObject(0,4,(bottomTile-1),3,3);
addChunkObject(0,10,(bottomTile-8),4,9);

//Chunk is ready to be inserted to chunk list
ds_list_add(cave_chunkList,currentChunk);


//------Chunk 4------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,0,(bottomTile-1),40,3);
addChunkObject(2,20,(bottomTile-6),1,1);
addChunkObject(2,30,(bottomTile-18),1,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(cave_chunkList,currentChunk);
