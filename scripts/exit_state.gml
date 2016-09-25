///exit_state

sprite_index = spr_player_exit;

if (image_alpha > 0){
    image_alpha -= .05;
} else {
    if (room != room_last){
    //goto next room
    room_goto_next();
    } else {
        //calculate score
        var endtime = floor(PlayerStats.time/room_speed);
        PlayerStats.timebonus = 2900 - floor(endtime/10)*100;
        
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
