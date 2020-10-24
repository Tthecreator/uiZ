/*
//draw_square(100,100,500,1000,c_gray,0.7);
draw_set_alpha(1);
//draw_set_color(c_green)
//draw_rectangle(ix+posx,iy,ix+posx+extraLineWidth+10,iy+10,false)
draw_set_color(c_black)


var h=100;

draw_text(100,h,"keyboard_key: "+string(keyboard_key));
h+=string_height("1")+10;
draw_text(100,h,"keyboard_char: "+string(keyboard_lastchar));
h+=string_height("1")+10;
draw_text(100,h,"obj_uiZ_controller.keyboard_charPressed: "+string(obj_uiZ_controller.keyboard_charPressed));
h+=string_height("1")+10;

draw_text(100,h,"hasSelection: "+string(hasSelection));
h+=string_height("1")+10;
draw_text(100,h,"isTyping: "+string(isTyping));
h+=string_height("1")+10;

draw_text(100,h,"list size: "+string(ds_list_size(textList)));
h+=string_height("1")+10;
//draw_text(100,h,"scroll: "+string(scroll));
//h+=string_height("1")+10;

draw_text(100,h,"selection1Line: "+string(selection1Line));
h+=string_height("1")+10;
draw_text(100,h,"selection1X: "+string(selection1X));
h+=string_height("1")+10;
draw_text(100,h,"selection1Char: "+string(selection1Char));
h+=string_height("1")+10;

draw_text(100,h,"selection2Line: "+string(selection2Line));
h+=string_height("1")+10;
draw_text(100,h,"selection2X: "+string(selection2X));
h+=string_height("1")+10;
draw_text(100,h,"selection2Char: "+string(selection2Char));
h+=string_height("1")+10;

draw_text(100,h,"selectionMinLine: "+string(selectionMinLine));
h+=string_height("1")+10;
draw_text(100,h,"selectionMinX: "+string(selectionMinX));
h+=string_height("1")+10;
draw_text(100,h,"selectionMinChar: "+string(selectionMinChar));
h+=string_height("1")+10;

draw_text(100,h,"selectionMaxLine: "+string(selectionMaxLine));
h+=string_height("1")+10;
draw_text(100,h,"selectionMaxX: "+string(selectionMaxX));
h+=string_height("1")+10;
draw_text(100,h,"selectionMaxChar: "+string(selectionMaxChar));
h+=string_height("1")+10;

draw_text(100,h,"lines: "+string(ds_list_size(textList)));
h+=string_height("1")+10;
draw_text(100,h,"selectionMaxX: "+string(string_width(textList[|ds_list_size(textList)-1])));
h+=string_height("1")+10;
draw_text(100,h,"selectionchars: "+string(string_length(textList[|ds_list_size(textList)-1])));
h+=string_height("1")+10;

draw_text(100,h,"hasSelection: "+string(hasSelection));
h+=string_height("1")+10;

draw_text(100,h,"sign(selection2Line-selection1Line): "+string(sign(selection2Line-selection1Line)));
h+=string_height("1")+10;

draw_text(100,h,"clipboard: "+clipboard_get_text());
h+=string_height("1")+10;

//get what lines should be drawn
var listLen = ds_list_size(textList);

if redoSelection=true and hasSelection=true then{
    var listFrom = max(min(last_selectionMinLine,selectionMinLine),listFromPx/fontHeight);
    var listTo = min(max(last_selectionMaxLine,selectionMaxLine),listFrom+iheight/fontHeight);
}else{
    var listFrom = (listFromPx/fontHeight);
    var listTo = min(listLen,listFrom+iheight/fontHeight);
}

var listFromFloor = floor(listFrom);
var listFromCeil = ceil(listFrom);
var listToFloor = floor(listTo);
var listToCeil = ceil(listTo);
draw_text(100,h,"listFrom: "+string(listFrom));
h+=string_height("1")+10;
draw_text(100,h,"listTo: "+string(listTo));
h+=string_height("1")+10;


draw_text(100,h,"mousefrozen: "+string(global.mousefrozen));
h+=string_height("1")+10;
draw_text(100,h,"mouse_button: "+string(mouse_check_button(mb_left)));
h+=string_height("1")+10;
draw_text(100,h,"mouse_pressed: "+string(mouse_check_button_pressed(mb_left)));
h+=string_height("1")+10;
draw_text(100,h,"kmouseover: "+string(kmouseover));
h+=string_height("1")+10;

draw_text(100,h,"global.uiz_stepNumber: "+string(global.uiz_stepNumber));
h+=string_height("1")+10;

/*
draw_set_color(c_red);
draw_line_width(selection1X,iy+selection1Line*fontHeight,selection1X,iy+(selection1Line+1)*fontHeight,1);
draw_set_color(c_green);
draw_line_width(selection2X,iy+selection2Line*fontHeight,selection2X,iy+(selection2Line+1)*fontHeight,1);
*/

/* */
/*  */
