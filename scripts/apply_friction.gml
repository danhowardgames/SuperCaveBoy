///apply_friction(amount)
var amount = argument0;

if (hspd != 0){
    if (abs(hspd-amount) > 0){
        hspd -= amount * image_xscale;
    } else {
        hspd = 0;
    }
}
