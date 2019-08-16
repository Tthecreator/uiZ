///uiz_dropdown_setbuttoncolor(instanceid,color[c_white],mouseon color[c_gray],mousein color[c_black])
gml_pragma("forceinline");
argument0.buttoncolor=argument1;
argument0.buttononcolor=argument2;
argument0.buttonincolor=argument3;
if argument0.kmouseover=0 then{argument0.ucolor=argument1}
