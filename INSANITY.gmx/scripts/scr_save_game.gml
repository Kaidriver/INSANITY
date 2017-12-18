//delete save file if already exists
if (file_exists("Save.sav")) {
    file_delete("Save.sav");
}
//open save file
ini_open("Save.sav"); 
//write in condition for if completed levels
ini_write_real("Save1","unlock2",global.unlock2);
ini_write_real("Save1","unlock3",global.unlock3);
ini_write_real("Save1","unlock4",global.unlock4);
ini_write_real("Save1","unlock5",global.unlock5);
ini_write_real("Save1","unlock6",global.unlock6);
 
//close file
ini_close();
