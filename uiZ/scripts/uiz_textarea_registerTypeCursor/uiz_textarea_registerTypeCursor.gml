function uiz_textarea_registerTypeCursor() {
	var lineY = uiz_textarea_getlineY(selection1Line);
	if isTyping and !hasSelection and lineY+fontHeight>iy and lineY<ily then{//check if cursor is within range
	if doscroll then{
	    var useX = min(selection1X,ilx-scblwidth);
	}else{
	    var useX = min(selection1X,ilx);
	}
	uiz_typecursor_register(useX,max(lineY,iy),useX,min(ily,lineY+fontHeight),typecolor,cursorwidth)
	}else{
	uiz_typecursor_deregister();
	}



}
