if(place_meeting(x+hspd, y, obj_wall)) {
    hspd = 0; 
}

x += hspd; 

if(place_meeting(x, y+vspd, obj_wall)) {
    vspd = 0; 
}

y += vspd; 

if (place_meeting(x,y,obj_finish)) {
  
    room_goto(irandom_range(1,5));
    global.points += 50
    
} 

if (place_meeting(x,y,obj_teleportr1)) {
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
} 

