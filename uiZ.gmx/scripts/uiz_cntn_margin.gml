//sdbm("cntn @"+string(id))
if ucontainin.object_index=obj_uiZ_surfaceholder then{
//sdbm("cntnsurfaceholder @"+string(id))
uiz_contain_surface(ucontainin);
}else{
//if containin=0 then{if containtowhosparent=0 then{var ucontainin=parent}else{var ucontainin=containtowhosparent.parent}
//}else{var ucontainin=containin}

///uiz_contain(containinwhat)
incontainframe=0

incontainframe=uiz_insideframe_ext_margin(ucontainin,id)
//if keyboard_check(vk_space) then{dbm(incontainframe)}

switch(incontainframe){
case 0:
return 0;
break;
case 1:
//if (ucontainin.rlx=global.screenpxwidth and ucontainin.rly=global.screenpxheight and (lx>ucontainin.width or ly>ucontainin.height)) 
//or (ucontainin.rx=0 and ucontainin.ry=0 and (x<0 or y<0)) then{ }
if global.uiz_shader=1 and uiz_shader=1 then{
uiz_contain_shader(ucontainin)
}else{
uiz_contain_surface(ucontainin)
}
return 1;
break;
case 2:
return 1;
break;
}
}
