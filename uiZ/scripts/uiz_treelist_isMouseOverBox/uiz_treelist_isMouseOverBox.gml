/// @description uiz_treelist_isMouseOverBox(treelist, itemHandle)
/// @param treelist
/// @param  itemHandle
function uiz_treelist_isMouseOverBox(argument0, argument1) {
	//check if the mouse is over a +/- box within a certain item.
	//DOES NOT PROPERLY CHECK MOUSE Y LEVELS!, so only use this within onClickScripts.
	with(argument0){
    
	    var miscl = indentEnabledAndBoxList[|argument1];
	    var indent = miscl >> 3;
	    var boxState = miscl mod 4;
    
	    if boxState==uiz_treelist_boxState_noBox then{return false;}
    
	    var h = fontHeight;
	    var boxadd=indent*h;    
    
	    //draw hierarchy lines:
	    if hierarchyLines and indent>0 then{
	        boxadd += 1;
	    }
    
	    return (uiz_getmouse_x()>=rx+boxadd and uiz_getmouse_x()<=rx+boxadd+h)
	}



}
