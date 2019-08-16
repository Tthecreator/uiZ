var ucontainin;
if containin=0 then{if containtowhosparent=0 then{ucontainin=parent}else{ucontainin=containtowhosparent.parent}
}else{ucontainin=containin}
if ucontainin.object_index=obj_uiZ_surfaceholder then{
return uiz_contain_surface(ucontainin);
}else{
return uiz_contain(ucontainin);
}
