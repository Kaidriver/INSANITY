up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

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

scr_collisions();   
 
