//Chunk working variables
globalvar chunkLeft,tileSize,bottomTile,rightMostTile,objectQ,
grass_chunkList,underwater_chunkList,sky_chunkList,cave_chunkList,space_chunkList;

//Use these properties to set chunk boundaries
chunkLeft=room_width;
tileSize=sprite_get_width(Spr_grassWall);
bottomTile = 1408/tileSize; //1408 is playable room height
rightMostTile = room_width/tileSize;
//Object Q contains chunk objects
objectQ = ds_queue_create();


//Define all chunks to be called randomly by chunkGenerator object during gameplay

defineGrassChunks();
defineUnderwaterChunks();
defineSkyChunks();
defineCaveChunks();
defineSpaceChunks();


