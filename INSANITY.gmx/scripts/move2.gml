///move2(hspd, vspd)
//set hspd and vspd as arguments
var hspd = argument[0]
var vspd = argument[1]
//horizontal collision with wall
if(place_meeting(x+hspd, y, obj_wall)) {
    while(!place_meeting(x+sign(hspd), y, obj_wall)) {
        x += sign(hspd);
    }
    hspd = 0; 
}


//vertical collision with wall
if(place_meeting(x, y+vspd, obj_wall)) {
    while(!place_meeting(x, y+sign(vspd), obj_wall)) {
        y += sign(vspd);
    }
    vspd = 0; 
}
//horizontal collision with roadblock
if(place_meeting(x+hspd, y, obj_roadblock)) {
    while(!place_meeting(x+sign(hspd), y, obj_roadblock)) {
        x += sign(hspd);
    }
    hspd = 0; 
}

  
//vertical collision with roadblock
if(place_meeting(x, y+vspd, obj_roadblock)) {
    while(!place_meeting(x, y+sign(vspd), obj_roadblock)) {
        y += sign(vspd);
    }
    vspd = 0; 
}
//horizontal collision with void
if(place_meeting(x+hspd, y, obj_tile)) {
    while(!place_meeting(x+sign(hspd), y, obj_tile)) {
        x += sign(hspd);
    }
    hspd = 0; 
}

  
//vertical collision with void
if(place_meeting(x, y+vspd, obj_tile)) {
    while(!place_meeting(x, y+sign(vspd), obj_tile)) {
        y += sign(vspd);
    }
    vspd = 0; 
}
//move 
x += hspd; 
y += vspd; 
//if reaches finish
if (place_meeting(x,y,obj_finish)) {
    //restart, or get new room
    room_restart();
    //enable powerup
    global.pup = true;
    global.pup2 = true; 
    //add 50 points to p1 in twoplayer mode
    global.points2 += 50;
    //increase sound pitch by .1 times
    global.pitch += .1; 
    audio_sound_pitch(sound_bkg, global.pitch);
 
} 
 

