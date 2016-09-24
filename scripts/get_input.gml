///get_input

/// Control player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
up_release = keyboard_check_released(vk_up);
down = keyboard_check(vk_down);

//override controls if gamepad plugged in
var gpid = 0;
var thresh = .5;

if (gamepad_is_connected(gpid)){
    right = gamepad_axis_value(gpid,gp_axislh) > thresh;
    left = gamepad_axis_value(gpid,gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(gpid,gp_face1);
    up_release = gamepad_button_check_released(gpid,gp_face1);
    down = gamepad_axis_value(gpid,gp_axislv) > thresh;
}

