// Checks if player sprite has left the bounds of the room
if(x < x_bound_left || x > x_bound_right || y < y_bound_top || y > y_bound_bottom){
    switch(argument[0]){
        case 0: //kill player
                playerBase_die();
                break;                   
    }
}
