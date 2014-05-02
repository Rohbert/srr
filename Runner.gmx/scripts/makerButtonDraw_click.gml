//Create object at mouse
switch(sprite_index){
    case Spr_grassWall: createThis= Spr_cursorWall; break;
    case Spr_grassLedge: createThis= Spr_cursorLedge; break;
    case Spr_coinRed: createThis = Spr_cursorCoin; break;
    case Spr_enemy1: createThis = Spr_cursorEnemy1; break;
    case Spr_enemy2: createThis = Spr_cursorEnemy2; break;
}

cursor_sprite = createThis;
