///uiz_framedivisionhorizontal_part_beg(object)
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
var p=instance_create(0,0,obj_uiZ_framerowanchor);
var g=argument0;
var h=g;

if g.object_index=obj_uiZ_frameset.object_index then{
g=g.headframe;
var resethead=1
}else{
var resethead=0
}
var f=0;
//p.resethead=resethead;
p.divisions=0;
p.width=g.width;
p.height=g.height;
uiz_setparent(p,argument0)
uiz_fixgeneralpos(p)
uiz_children_adopt(g,p)
uiz_setparent(p,g.parent)
g.x=0;
g.y=0;
return p;
