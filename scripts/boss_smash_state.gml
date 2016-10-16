///boss_smash_state

if (!place_meeting(x,y+1,Solid)){
    if (vspd < 16){
        vspd +=2;
    }
    
    move(Solid);
} else {
    state = boss_stall_state;
    alarm[0] = room_speed;
    instance_create(x,y,StopGame);
    CameraController.state = camera_shake_state;
    audio_play_sound(snd_step,8,false);
    //hurt if in lava
    if (position_meeting(x,y+1,Lava)){
        hp -= 1;
        audio_play_sound(snd_snake,9,false);
    }
}

