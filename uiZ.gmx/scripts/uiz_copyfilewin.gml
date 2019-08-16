///uiz_copyfilewin(source, desitination)
//uses a dll to copy a file on windows
if SECUREMODE=false and room=uiz_designer and instance_exists(obj_uiz_designer) then{//SAFETY CHECK
return external_call(global.uiz_copyfile,argument0,argument1);
}

