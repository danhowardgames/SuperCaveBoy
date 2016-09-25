///exit_state
if (image_alpha > 0){
    image_alpha -= .25;
} else {
    if (room != room_last){
    //goto next room
    room_goto_next();
    } else {
        //calculate score
        if (floor(PlayerStats.time/room_speed) < 60) {
            PlayerStats.timebonus = 1000;
        } else {
            PlayerStats.timebonus = 500;
        }
        score += PlayerStats.timebonus;
        score += PlayerStats.sapphires * 100;
        
        //open highscores
        ini_open("Settings.ini");
        PlayerStats.highscore = ini_read_real("Score","highscore",0);
        if (score > PlayerStats.highscore){
            PlayerStats.highscore = score
            ini_write_real("Score","highscore",PlayerStats.highscore);
        }
        //close highscores
        ini_close();
        
        //goto highscores
        room_goto(rm_highscore);
    }
}
