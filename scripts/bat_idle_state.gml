///bat_idle_state

sprite_index = spr_bat_idle;

if (instance_exists(Player)){
    var dis = point_distance(x,y,Player.x,Player.y);
    
    if(dis < sight){
        state = bat_chase_state;
    }
}
