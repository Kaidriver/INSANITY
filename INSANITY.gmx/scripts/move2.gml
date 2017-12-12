///move(hspd, vspd)
var hspd = argument[0]
var vspd = argument[1]
if(place_meeting(x+hspd, y, obj_wall)) {
    while(!place_meeting(x+sign(hspd), y, obj_wall)) {
        x += sign(hspd);
    }
    hspd = 0; 
}



if(place_meeting(x, y+vspd, obj_wall)) {
    while(!place_meeting(x, y+sign(vspd), obj_wall)) {
        y += sign(vspd);
    }
    vspd = 0; 
}

if(place_meeting(x+hspd, y, obj_roadblock)) {
    while(!place_meeting(x+sign(hspd), y, obj_roadblock)) {
        x += sign(hspd);
    }
    hspd = 0; 
}

  

if(place_meeting(x, y+vspd, obj_roadblock)) {
    while(!place_meeting(x, y+sign(vspd), obj_roadblock)) {
        y += sign(vspd);
    }
    vspd = 0; 
}
x += hspd; 
y += vspd; 

if (place_meeting(x,y,obj_finish)) {
    
    room_restart();
    global.points2 += 50;
    global.pitch += .1; 
    audio_sound_pitch(sound_bkg, global.pitch);
    if (global.timer2 = true){
        global.time += 20
    }
    if (global.twoplayer = true) {
         
        global.finish = true; 
    }
    else if(global.endless = true) {
        global.points += 50
    }
     
} 

 
