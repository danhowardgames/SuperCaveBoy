///camera_follow_state

var cam_targetX;
var cam_targetY;
var cam_rate = .1;

// set target as in front of the player
cam_targetX = (Player.x+(sign(Player.image_xscale)*50))-view_hborder;

// if playeris ledge grabbing set the view lower
if (Player.state == ledge_grab_state){
   cam_targetY = Player.y+50-view_vborder; 
} else {
    cam_targetY = Player.y-view_vborder;
}



//move smoothly to target
camera_move(cam_targetX,cam_targetY,cam_rate);
