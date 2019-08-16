///uiz_contain(containinwhat)
incontainframe=0
if argument0=parent then{
incontainframe=inframe
}else{
incontainframe=uiz_insideframe_ext(argument0,id)
}
switch(incontainframe){
case 0:
return 0;
break;
case 1:
//if (argument0.rlx=global.screenpxwidth and argument0.rly=global.screenpxheight and (lx>argument0.width or ly>argument0.height)) 
//or (argument0.rx=0 and argument0.ry=0 and (x<0 or y<0)) then{ }
if global.uiz_shader=1 and uiz_shader=1 then{
uiz_contain_shader(argument0)
}else{
uiz_contain_surface(argument0)
}
return 1;
break;
case 2:
return 1;
break;
}
