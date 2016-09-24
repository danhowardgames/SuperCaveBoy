///direction_move_bounce(collision object)
var collision_object = argument0;

// collision management
// horizontal collisions

if (place_meeting(x+hspd, y, collision_object)){
    while (!place_meeting(x+sign(hspd),y,collision_object)){
        x += sign(hspd);
    }
 
    //TODO this doesnt work   
    hspd = -(hspd/2);
    
    if ((hspd > 0 && abs(hspd) < 1)||(hspd < 0 && abs(hspd) > -1)){
        hspd = 0;
    }

}

x += hspd;

//vertial collisions

if (place_meeting(x, y+vspd, collision_object)){
    while (!place_meeting(x,y+sign(vspd),collision_object)){
        y += sign(vspd);
    }
    
    vspd = -(vspd/2);
    if (abs(vspd) < 2){
        vspd = 0;
    }
    
    
}

y += vspd;
