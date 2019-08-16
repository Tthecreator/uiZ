//create a dummy file
//returns the appdatapath
//uiz_executecmdinit() needs to be initialized
//creates a test file, to then find that file again. only test the appdata and localappdata folder
/*
var dir="UIZDUMMYFOlDER"+string(irandom(99999))
while(uiz_direxists(environment_get_variable("APPDATA")+"\"+game_project_name+"\"+dir+"\")=1 or uiz_direxists(environment_get_variable("LOCALAPPDATA")+"\"+game_project_name+"\"+dir+"\")=1){
var dir="UIZDUMMYFOlDER"+string(irandom(99999))
}
directory_create(dir)
//dbm(dir)
if uiz_direxists(environment_get_variable("APPDATA")+"\"+game_project_name+"\"+dir+"\")=1 then{return environment_get_variable("APPDATA")+"\"+game_project_name+"\";}
if uiz_direxists(environment_get_variable("LOCALAPPDATA")+"\"+game_project_name+"\"+dir+"\")=1 then{return environment_get_variable("LOCALAPPDATA")+"\"+game_project_name+"\";}
directory_destroy(dir)
return "";
*/
return game_save_id;
