//ChunkUI will build UI and subsystem objects

//view0 is chunk view window
//view1 is editor controls
globalvar minChunkWidth,maxChunkWidth,createThis,makerControlsY,makerLevel,makerGridColor;
minChunkWidth=16;
maxChunkWidth=3840;
makerTileSize = sprite_get_width(Spr_cursorWall);
makerLevel = "Grass";
makerGridColor = c_black;
makerControlsY=view_yview[1];
playerSpeed=0;

//The id of the chunk to read from chunkFile
readChunkID=0;
chunkDifficultyRating=-1;
chunkExtra1=-1;
chunkExtra2=-1;
fileObjectType=-1;
fileObjectX=-1;
fileObjectY=-1;

//How many gridlines to draw
vLineCount = room_width/16;
hLineCount = view_hview[0]/16;

//Clear object to be created variable
createThis=-1;

//Set Background for chunk portion of view
background_index[0]=Bg_sky1;
background_xscale[0] = 1 * (room_width / background_width[0]);
background_yscale[0] = 1 * (view_hview[0] / background_height[0]);

//add ui buttons
makerUI_addButtons();

//read chunk files
readChunkFile();
 


