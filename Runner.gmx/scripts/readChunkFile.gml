//Open file for read
grassFile = file_text_open_read(working_directory + "ChunkFile_Grass");
var currentLine;
var chunkIDFound=0;
//Find the first chunk (ID=0)
while(!chunkIDFound){
    currentLine = file_text_read_string(grassFile);
    if(currentLine=="ChunkID="+string(readChunkID)){
        chunkIDFound=1;
    }
    file_text_readln(grassFile);
    //currentLine = file_text_read_string(grassFile);
}
//Chunk ID does exist
if(chunkIDFound){
    chunkDifficultyRating = file_text_read_string(grassFile);
    file_text_readln(grassFile);
    chunkExtra1 = file_text_read_string(grassFile);
    file_text_readln(grassFile);
    chunkExtra2 = file_text_read_string(grassFile);
    
    file_text_readln(grassFile);
    //Get all chunk object lines
    var moreObjects=1;
    while(moreObjects){
        currentLine = file_text_read_string(grassFile);
        if(currentLine=="EndChunk")
            moreObjects=0;
        else{
        //Get all object properties
        
        //7,10,30,10,1
        
            numberPos = string_pos(",",currentLine); //=2
            fileObjectType = real(string_copy(currentLine,1,numberPos-1)); //=7
            currentLine = string_delete(currentLine,1, numberPos); //=10,30,10,1
            
            numberPos = string_pos(",",currentLine);//=3
            fileObjectX = real(string_copy(currentLine,1,numberPos-1));//=10
            currentLine = string_delete(currentLine,1, numberPos);//=30,10,1
            
            numberPos = string_pos(",",currentLine);
            fileObjectY = real(string_copy(currentLine,1,numberPos-1));
            currentLine = string_delete(currentLine,1, numberPos);//=10,1
            
            numberPos = string_pos(",",currentLine);
            fileObjectWidth = real(string_copy(currentLine,1,numberPos-1));
            currentLine = string_delete(currentLine,1, numberPos);//=1
            
            //numberPos = string_pos(",",currentLine);
            fileObjectHeight = real(string_copy(currentLine,1,string_length(currentLine)));//remainder of line
            //currentLine = string_delete(currentLine,1, numberPos);//=1
            
            createMakerObjectFromFile();//no need to pass parameters, this script will see required arguments
                        
            file_text_readln(grassFile);
        }
    }
}

file_text_close(grassFile);












//Close file
file_text_close(grassFile);
