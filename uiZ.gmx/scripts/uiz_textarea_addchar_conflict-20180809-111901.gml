if value="" then{var a=true}else{var a=false;}
value=uiz_addchar(value,pos,argument0)
if a then{
pos=1
}else{
pos=min(pos,len)+1
}

//uiz_textarea_qstr()
uiz_textarea_resetpos()
