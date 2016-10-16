///camera_shake_state

var targetX = view_xview + random_range(-20,20);
var targetY = view_yview + random_range(-20,20);
var rate = 0.8

camera_move(targetX,targetY,rate);

state = camera_follow_state;
