/*
Chunks are 40 tiles wide and 44 tiles high
LowerView is 22 tiles high

*/

//All Underwater Area Chunks
underwater_chunkList=ds_list_create();

//------Chunk 1------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,1,1,39,3);
addChunkObject(0,0,(bottomTile-3),40,3);
addChunkObject(0,10,20,20,3);
addChunkObject(0,19,10,3,24);
addChunkObject(2,11,19,1,1);
addChunkObject(2,29,24,1,1);
//Chunk is ready to be inserted to chunk list
ds_list_add(underwater_chunkList,currentChunk);


//------Chunk 2------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 2;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,1,1,39,3);
addChunkObject(0,0,(bottomTile-3),40,3);
addChunkObject(0,10,4,4,22);
addChunkObject(0,30,(bottomTile-24),4,22);
addChunkObject(2,19,(bottomTile-20),3,1);
addChunkObject(2,20,(bottomTile-21),1,3);
//Chunk is ready to be inserted to chunk list
ds_list_add(underwater_chunkList,currentChunk);


//------Chunk 3------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 3;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,1,1,39,3);
addChunkObject(0,0,(bottomTile-3),40,3);
addChunkObject(0,16,(bottomTile-11),3,5);
addChunkObject(0,22,(bottomTile-14),3,6);
addChunkObject(0,28,(bottomTile-17),3,7);
addChunkObject(0,34,(bottomTile-21),3,8);
addChunkObject(2,17,(bottomTile-12),1,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(underwater_chunkList,currentChunk);


//------Chunk 4------
//Chunk Difficulty Rating
//clear out variable
currentChunk=0;
currentChunk[0,0] = 1;
//Chunk Objects
currentObjectIndex=0;
addChunkObject(0,1,1,39,3);
addChunkObject(0,0,(bottomTile-3),40,3);
addChunkObject(2,30,(bottomTile-18),1,1);

//Chunk is ready to be inserted to chunk list
ds_list_add(underwater_chunkList,currentChunk);
