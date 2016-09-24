///spider_jump_state

image_index = image_number-1;

//Apply Gravity

if (!place_meeting(x,y+1,Solid)){
    vspd += grav;
} else {
    vspd =0;
    //use friction
    apply_friction(acc);
    
    //check for idle state
    if (hspd < 1 && vspd == 0){
        state = spider_idle_state;
        alarm[0] = 15;
        image_speed = 0;
        image_index = 0;
    }
}

if (hspd != 0) image_xscale = sign(hspd);

//move spider

horizontal_move_bounce(Solid);
