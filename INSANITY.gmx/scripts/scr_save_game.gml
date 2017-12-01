if (file_exists("Save.sav")) {
    file_delete("Save.sav");
}
ini_open("Save.sav"); 
ini_write_real("Save1","unlock2",global.unlock2);
ini_write_real("Save1","unlock3",global.unlock3);
ini_close();
