//

spawnChunk();
instance_create(chunkLeft,view_yview[0]+100,Obj_chunkGenerator);

//Debug Buttons
buttonID = instance_create(view_wview[0]-100,view_yview[0],Obj_levelButton);
buttonID.gotoLevel = Room_Grass;
buttonID.image_index=1;
buttonID.yOffset=50;

buttonID = instance_create(view_wview[0]-100,view_yview[0],Obj_levelButton);
buttonID.gotoLevel = Room_Underwater;
buttonID.image_index=2;
buttonID.yOffset=150;

buttonID = instance_create(view_wview[0]-100,view_yview[0],Obj_levelButton);
buttonID.gotoLevel = Room_Sky;
buttonID.image_index=3;
buttonID.yOffset=250;

buttonID = instance_create(view_wview[0]-100,view_yview[0],Obj_levelButton);
buttonID.gotoLevel = Room_Cave;
buttonID.image_index=4;
buttonID.yOffset=350;

buttonID = instance_create(view_wview[0]-100,view_yview[0],Obj_levelButton);
buttonID.gotoLevel = Room_Space;
buttonID.image_index=5;
buttonID.yOffset=450;

