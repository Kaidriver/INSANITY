up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

if (up) {
    vspd = -spd;
    
}

if (down) {
    vspd = spd;   
}

if (left) {
    hspd = -spd;   
}

if (right) {
    hspd = spd;   
}

if (!right && !left) {
    hspd = 0;
}

if (!up && !down) {
    vspd = 0;
}
if (place_meeting(x,y,obj_finish)) {
    state = scr_switch_level;
} 
scr_collisions();   
 
