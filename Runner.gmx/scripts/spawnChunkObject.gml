/*arguments: 0=type, 1=x, 2=y, 3=width, 4=height
types: 0=wall,  1=static enemy, 2 = coin

x,y,width and height are in tile Coordinates not actual room coordinates

*/

var i=0;
var k=0;
var newObj;
switch(argument[0]){
    case 0: //Landmass
            newObj = Obj_wall;     
            break;
    case 1: //Enemy
            newObj=Obj_enemy1;
            break;
    
    case 2://Coin
            newObj=Obj_coin;
            break;
    
    case 3://Ledge
            newObj=Obj_ledge;
            break;
    
    case 4://Enemy 2
            newObj=Obj_enemy2;
            break;
                
}
for(i=0;i<argument[3];i+=1)
    for(k=0;k<argument[4];k+=1){
        ds_queue_enqueue(objectQ, newObj);
        ds_queue_enqueue(objectQ, chunkLeft+(argument[1]*tileSize)+(i*tileSize));
        ds_queue_enqueue(objectQ, (argument[2]*tileSize)+(k*tileSize));
        
        }
        //instance_create(chunkLeft+(argument[1]*tileSize)+(i*tileSize),(argument[2]*tileSize)+(k*tileSize),newObj);

