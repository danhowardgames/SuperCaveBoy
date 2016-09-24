/// move_state()

if (!place_meeting(x,y+1,Solid)){
    vspd += grav;
    
    // Player is in the air
    sprite_index = spr_player_jump;
    image_speed = 0;
    image_index = (vspd > 0);
    
    // Control jump
    if (up_release && vspd < -6){
        vspd = -6;
    }
    
} else {
    vspd = 0;
    
    //Player on ground
    if (hspd == 0){
        sprite_index = spr_player_idle;
    } else {
        sprite_index = spr_player_walk;
        image_speed = .6;
    }
    
    
    //Jump code (jump if up and on ground)
    if (up){
        vspd = -16;
    }
}



//acceleration
if (left || right){
    hspd += (right-left)*acc;
    hspd_dir = (right-left);
    //cap movement at 8
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
} else {
    apply_friction(acc);
}


if (hspd != 0){
    image_xscale = sign(hspd);
}


// Move
move(Solid);

// check for ledge grab state
var falling = y-yprevious > 0;
var wasnt_wall = !position_meeting(x+17*image_xscale,yprevious,Solid);
var is_wall = position_meeting(x+17*image_xscale,y,Solid);

if (falling && wasnt_wall && is_wall){
    hspd = 0;
    vspd = 0;
    
    //move horizontally to the ledge
    while (!place_meeting(x+image_xscale,y,Solid)){
        x+=image_xscale;
    }
    
    //make sure we are the right height
    while (position_meeting(x+17*image_xscale,y-1,Solid)){
        y-=1;
    }
    
    sprite_index = spr_player_edge_grab;
    state = ledge_grab_state;
}

