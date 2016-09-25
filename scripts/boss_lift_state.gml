///boss_lift_state()

image_index = 1;

if (vspd >= -16){
    vspd -= .5;
}

move(Solid)

if(place_meeting(x,y-32, Solid)){
    vspd = 0;
    state = boss_chase_state;
}
