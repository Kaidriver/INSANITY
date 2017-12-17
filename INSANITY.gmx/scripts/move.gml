///move(hspd, vspd)
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
    //add 50 points to p1 in twoplayer mode
    global.points1 += 50;
    //increase sound pitch by .1 times
    global.pitch += .1; 
    audio_sound_pitch(sound_bkg, global.pitch);
    //if endless timer is true
    if (global.timer2 == true){
        //add 20 seconds
        global.time += 20
    }  
    //if endless is true
    else if(global.endless == true) {
        //add 50 points 
        global.points += 50
    }
     
} 
//if reach finish in level1
if (place_meeting(x,y, obj_finish2)) {
    //go to level room
    room_goto(levelsroom);
    //unlock level2
    global.unlock2 = true;
    global.level1 = false;
    global.level2 = false;
}
//if reach finish in level2
if (place_meeting(x,y, obj_finish3)) {
    //go to level room
    room_goto(levelsroom);
    //unlock level2
    global.unlock3 = true;
    global.level1 = false;
    global.level2 = false;
}
//if touch teleporter
if (place_meeting(x,y,obj_teleportr1)) {
    //go to teleport2 location
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
}
//if touch enemy
if (place_meeting(x,y, obj_enemylvl1) || place_meeting(x,y, obj_enemy2) || place_meeting(x,y, obj_enemy3) || place_meeting(x,y, obj_enemy4) || place_meeting(x,y, obj_enemy5) || place_meeting(x,y, obj_enemy6) || place_meeting(x,y, obj_enemy7 ) || place_meeting(x,y, obj_enemyh ) ) {
    //gameover
    room_goto(game_overlvl);
    
} 

