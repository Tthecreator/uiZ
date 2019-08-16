///uiz_contain()
var f=inframe
//dbm("f is 1",f)
if forcecontain=true then{f=max(1,f)}
//dbm("f is",f)
switch(f){
case 0:
return 0;
break;
case 1:
if global.uiz_shader=1 and uiz_shader=1 then{
uiz_contain_shader()
}else{
uiz_contain_surface(parent)
}
return 1;
break;
case 2:
//uiz_updater_setsurface();
uiz_contain_surface(parent)
return 1;
break;
}
