if SECUREMODE=false and room=uiz_designer and instance_exists(obj_uiz_designer) then{//SAFETY CHECK
global.uiz_dllfind=external_define("uiz\file_find.dll","file_find_first",dll_stdcall,ty_string,1,ty_string)
global.uiz_dllcreatefile=external_define("uiz\createfile.dll","create",dll_stdcall,ty_real,1,ty_string)
}
//external_call(global.uiz_dllcreatefile,"T:\test.txt")
