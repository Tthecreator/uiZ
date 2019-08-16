///uiz_frame_setscrollautoupdate(instanceid,autoupdatescrollx[false],autoupdatescrolly[false])
gml_pragma("forceinline");
argument0.autoupdatescrollx=argument1;
argument0.autoupdatescrolly=argument2;
if argument1 or argument2 then{
with(argument0){uiz_updater_step();}
}else{
with(argument0){uiz_updater_unstep();}
}
