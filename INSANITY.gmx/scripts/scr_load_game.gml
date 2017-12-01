if(file_exists("Save.sav")) {
    ini_open("Save.sav");
    global.unlock2 = ini_read_real("Save1", "unlock2", global.unlock2);
    global.unlock3 = ini_read_real("Save1", "unlock3", global.unlock3);
    ini_close(); 
}
else {

}
