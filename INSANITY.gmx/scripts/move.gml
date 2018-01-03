//move(hspd, vspd)
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
    //add 50 points to p2 in twoplayer mode
    global.points1 += 50;
    //increase sound pitch by .1 times
    global.pitch += .1; 
    audio_sound_pitch(sound_bkg, global.pitch);
        //if endless timer is true
    if (global.timer2 = true){
        //add 20 seconds
        global.time += 10
    }
    if (global.twoplayer = true) {
        
        global.finish = true; 
    }
    //if endless timer is true
    else if(global.endless = true) {
    //add 50 points
        global.points += 50
    }
     
} 
//unlocking levels
if (place_meeting(x,y, obj_finishlvl1)) {
    room_goto(levelsroom);
    global.unlock2 = true;
    global.level1 = false;
    global.level2 = false;
}

if (place_meeting(x,y, obj_finishlvl2)) {
    room_goto(levelsroom);
    global.unlock3 = true;
    global.level1 = false;
    global.level2 = false;
}

if (place_meeting(x,y, obj_finishlvl3)){
    room_goto(levelsroom);
    global.unlock4 = true;
    global.level4 = true;
    global.level1 = false;
    global.level2 = false;
    global.level3 = false;
}

if (place_meeting(x,y, obj_finishlvl4)){
    room_goto(levelsroom);
    global.unlock5 = true;
    global.level1 = false;
    global.level2 = false;
    global.level3 = false;
    
}

if (place_meeting(x,y, obj_finishlvl5)){
    room_goto(levelsroom);
    global.unlock6 = true;
    global.level1 = false;
    global.level2 = false;
    global.level3 = false;
    global.level4 = false;
    global.level5 = false; 
}

if (place_meeting(x,y, obj_finishlvl6)){
    room_goto(mm);
    global.unlock = true;
    global.level1 = false;
    global.level2 = false;
    global.level3 = false;
    global.level4 = false;
    global.level5 = false; 
    global.level6 = false;
}

//teleportation 
if (place_meeting(x,y,obj_teleportr1)) {
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
}

if (place_meeting(x,y,obj_teleportRand)){
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
}
//Game over if touch enemies
if (place_meeting(x,y, obj_enemylvl1) || place_meeting(x,y, obj_enemy2) || place_meeting(x,y, obj_enemy3) || place_meeting(x,y, obj_enemy4) || place_meeting(x,y, obj_enemy5) || place_meeting(x,y, obj_enemy6) || place_meeting(x,y, obj_enemy7 ) || place_meeting(x,y, obj_enemyh ) || place_meeting(x,y, obj_lvl5 ) || place_meeting(x,y, obj_lvl5_2_)  || place_meeting(x,y, obj_lvl6v) || place_meeting(x,y, obj_lvl6h) || place_meeting(x,y, obj_lvl6f) )  {
    room_goto(game_overlvl);
    
} 

