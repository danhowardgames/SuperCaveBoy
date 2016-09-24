///exit_state
if (image_alpha > 0){
    image_alpha -= .25;
} else {
    if (room != room_last){
    //goto next room
    room_goto_next();
    } else {
        game_restart();
    }
}
