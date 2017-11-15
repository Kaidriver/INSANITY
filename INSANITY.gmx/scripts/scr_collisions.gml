if(place_meeting(x+hspd, y, obj_wall)) {
    hspd = 0; 
}

x += hspd; 

if(place_meeting(x, y+vspd, obj_wall)) {
    vspd = 0; 
}

y += vspd; 

if (place_meeting(x,y,obj_finish)) {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

    global.points += 50;
    room_goto(irandom_range(1,5));
    alarm[0] = (room_speed*15)
    
=======
     
    room_goto(irandom_range(1,5)); 
    global.time += (delta_time/1000000)
>>>>>>> da30c576dc0baebb03974cd0991befd126f4d532
=======
     
    room_goto(irandom_range(1,5)); 
    global.time += (delta_time/1000000)
>>>>>>> parent of f64b97c... score
=======
     
    room_goto(irandom_range(1,5)); 
    global.time += (delta_time/1000000)
>>>>>>> parent of f64b97c... score
=======
     
    room_goto(irandom_range(1,5)); 
    global.time += (delta_time/1000000)
>>>>>>> parent of f64b97c... score
} 

if (place_meeting(x,y,obj_teleportr1)) {
    obj_player.x = obj_teleportr2.x 
    obj_player.y = obj_teleportr2.y
} 

