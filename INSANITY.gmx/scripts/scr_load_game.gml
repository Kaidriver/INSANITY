//if save file exists
if(file_exists("Save.sav")) {
    //open it
    ini_open("Save.sav");
    //set completed variables to saved conditions
    global.unlock2 = ini_read_real("Save1", "unlock2", global.unlock2);
    global.unlock3 = ini_read_real("Save1", "unlock3", global.unlock3);
    global.unlock4 = ini_read_real("Save1", "unlock4", global.unlock4);
    global.unlock5 = ini_read_real("Save1", "unlock5", global.unlock5);
    global.unlock6 = ini_read_real("Save1", "unlock6", global.unlock6);
 

                
    //close file
    ini_close(); 
    //go to start menu
    room_goto(start); 
}
 
