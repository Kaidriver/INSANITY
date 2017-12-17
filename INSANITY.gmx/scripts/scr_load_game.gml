//if save file exists
if(file_exists("Save.sav")) {
    //open it
    ini_open("Save.sav");
    //set completed variables to saved conditions
    global.unlock2 = ini_read_real("Save1", "unlock2", global.unlock2);
    global.unlock3 = ini_read_real("Save1", "unlock3", global.unlock3);
    //close file
    ini_close(); 
    //go to start menu
    room_goto(start); 
}
 
