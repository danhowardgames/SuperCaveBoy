///camera_move(Targetx,Targety,decay_rate)
var cam_targetX = argument[0];
var cam_targetY = argument[1];
var decay_rate = argument[2];

//Move cam
view_xview += ((cam_targetX)-view_xview) * decay_rate;
view_yview += ((cam_targetY)-view_yview) * decay_rate;

//dont go off borders of screen
if (view_xview < 0){
    view_xview = 0;
}

if (view_yview < 0){
    view_yview = 0;
}

if (view_xview > room_width-view_wview){
    view_xview = room_width-view_wview;
}

if (view_yview > room_height-view_hview){
    view_yview = room_height-view_hview;
}
