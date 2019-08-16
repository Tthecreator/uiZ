///uiz_findfile_createfile(filepath)
if SECUREMODE=false and room=uiz_designer and instance_exists(obj_uiz_designer) then{//SAFETY CHECK
return external_call(global.uiz_dllcreatefile,argument0)
}
