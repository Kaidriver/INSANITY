
if (keyboard_check(ord('L'))){
    alarm[0] = room_speed*1; 
    if (place_meeting(x, y, obj_wall)) {
        with (instance_place(x, y, obj_wall)) {
        instance_destroy();
    }
    
  } 
  
}


