//delete save file if already exists
if (file_exists("Save.sav")) {
    file_delete("Save.sav");
}
//open save file
ini_open("Save.sav"); 
//write in condition for if completed level 2 and 3
ini_write_real("Save1","unlock2",global.unlock2);
ini_write_real("Save1","unlock3",global.unlock3);
//close file
ini_close();
