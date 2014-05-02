//Pop a object from queue and instantiate it
if(ds_queue_empty(objectQ))
    exit;
obj=ds_queue_dequeue(objectQ);
objX = ds_queue_dequeue(objectQ);
objY = ds_queue_dequeue(objectQ);
//we need to offset the original position of the object since room has moved left since this object was entered in queue
offsetX = chunkLeft-Obj_chunkGenerator.x;

instance_create(objX-offsetX,objY,obj);
