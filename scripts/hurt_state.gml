///hurt_state()
// Set the sprite
sprite_index = spr_player_hurt;

if (hspd != 0) image_xscale = sign(hspd);

// Apply gravity
if (!place_meeting(x, y+1, Solid)) {
    vspd += grav;
} else {
    vspd = 0;
    
    // Use friction
    apply_friction(acc);
}

direction_move_bounce(Solid);

// Change back to the move state
if (hspd == 0 && vspd == 0) {
    image_blend = c_white;
    
    //check if player is dead
    if (PlayerStats.hp <= 0){
        score = 0;
        PlayerStats.hp = PlayerStats.maxhp;
        PlayerStats.sapphires = 0;
        if (audio_is_playing(snd_boss_music)){
            audio_stop_sound(snd_boss_music);
        }
        room_restart();
        
    }
    
    state = move_state;
}

