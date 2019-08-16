///uiz_dropdown_setbuttontrianglecolor(instanceid,color[c_black],mouseon color[c_dkgray],mousein color[c_white])
gml_pragma("forceinline");
argument0.buttontrianglecolor=argument1;
argument0.buttontriangleoncolor=argument2;
argument0.buttontriangleincolor=argument3;
if argument0.kmouseover=0 then{argument0.icolor=argument1}
