/*if sizestatus<2 then{
uiz_window_maximize()
}else{
uiz_window_unmaximize()
}*/
//sdbm("maximizing")
switch(sizestatus){
case 0:
uiz_window_maximize_frommin()
break;
case 1:
uiz_window_maximize()
break;
case 2:
uiz_window_unmaximize()
break;
}
