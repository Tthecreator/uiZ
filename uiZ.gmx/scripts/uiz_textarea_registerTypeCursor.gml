var lineY = uiz_textarea_getlineY(selection1Line);
if lineY+fontHeight>iy and lineY<ily then{//check if cursor is within range
uiz_typecursor_register(selection1X,max(lineY,iy),selection1X,min(ily,lineY+fontHeight),typecolor,cursorwidth)
}else{
uiz_typecursor_deregister();
}
