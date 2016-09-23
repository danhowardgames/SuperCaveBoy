/// ledge_grab_state()
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (down){
    state = move_state;
}

if (up){
    state = move_state;
    vspd = -16
}
