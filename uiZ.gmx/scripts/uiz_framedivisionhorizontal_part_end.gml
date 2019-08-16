///uiz_framedivisionhorizontal_part_end(begobject,object)
/*
For advanced users only.
Sometimes when you need have more frames than game maker allows arguments for and are thus unable to use uiz_framedivision horizontal/vertical,
Or when you want to make a frameset that is dependent on other inputs you can use these part functions.
What you'll have to do first is depending on the type of division, call either "uiz_framedivisionhorizontal_part_beg" or "uiz_framedivisionvertical_part_beg".
Store the value returned by the "_beg" script inside a variable.
Next, call the "uiz_framedivision_part_mid()" script for as many times as you need frames.
The "mid" script only supports 4 arguments so for more frames you'd have to specify it multiple times
Give the "mid" script the variable returned by the "_beg" script, the object(same as argument0 of your "_beg" script), and the size of the frame.
Whenever you are done, depending on the type of division, call either "uiz_framedivisionhorizontal_part_end" or "uiz_framedivisionvertical_part_end" and supply it with
the variable returned by the "_beg" script and the object(same as argument0 of your "_beg" script). 
*/
var p=argument0
uiz_framesetfixhorizontal(p)
if argument1.object_index=obj_uiZ_frameset.object_index then{argument1.headframe=p}
return p;
