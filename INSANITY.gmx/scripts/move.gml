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
if(place_meeting(x+hspd, y, obj_tile)) {
    while(!place_meeting(x+sign(hspd), y, obj_tile)) {
        x += sign(hspd);
    }
    hspd = 0; 
}

  

if(place_meeting(x, y+vspd, obj_tile)) {
    while(!place_meeting(x, y+sign(vspd), obj_tile)) {
        y += sign(vspd);
    }
    vspd = 0; 
}
x += hspd; 
y += vspd; 

if (place_meeting(x,y,obj_finish)) {
    
    room_restart();
    global.pup = true; 
    global.points1 += 50;
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

if (place_meeting(x,y, obj_finish2)) {
    room_goto(levelsroom);
    global.unlock2 = true;
    global.level1 = false;
    global.level2 = false;
}

if (place_meeting(x,y, obj_finish3)) {
    room_goto(levelsroom);
    global.unlock3 = true;
    global.level1 = false;
    global.level2 = false;
}

if (place_meeting(x,y,obj_teleportr1)) {
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
}

if (place_meeting(x,y, obj_enemylvl1) || place_meeting(x,y, obj_enemy2) || place_meeting(x,y, obj_enemy3) || place_meeting(x,y, obj_enemy4) || place_meeting(x,y, obj_enemy5) ) {
    room_goto(game_overlvl);
    
} 

