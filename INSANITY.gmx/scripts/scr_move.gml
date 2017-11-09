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
if (keyboard_check(vk_control)) {
room_goto(room1)
} 
scr_collisions();   
 
