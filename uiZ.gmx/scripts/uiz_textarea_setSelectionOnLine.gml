///uiz_textarea_setSelectionOnLine(pos1, pos2)
if selection1Line>=0 && selection1Line<ds_list_size(textList) then{
selection2Line=selection1Line;
var line = textList
selection1Char = argument0;
selection1X = string_width(string_copy(line, 0, argument0));

selection2Char = argument1;
selection2X = string_width(string_copy(line, 0, argument1));

uiz_textarea_handleSelectingOrTyping();
}
