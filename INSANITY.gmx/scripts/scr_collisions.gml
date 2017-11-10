if(place_meeting(x+hspd, y, obj_wall)) {
    hspd = 0; 
}

x += hspd; 

if(place_meeting(x, y+vspd, obj_wall)) {
    vspd = 0; 
}

y += vspd; 

if (place_meeting(x,y,obj_finish)) {
    state = scr_switch_level;
} 

