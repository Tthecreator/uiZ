///uiz_framedivision_part_mid(begpartid,object,divisionval,valuetype[px dp or fc],objectType)
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
var g=argument1;
if instance_exists(g) and g.object_index==obj_uiZ_frameset.object_index then{g=g.headframe;}

//for(var i=0;i<p.divisions;i++){
var i=p.divisions;
//var at=i*2+1;
p.isize[i]=argument2
p.isizetype[i]=argument3
//if g=100015 then{dbm(i,p)}
if i>0 then{
p.frameat[i]=uiz_c(argument4);
uiz_setParent(p.frameat[i],p)
p.frameat[i].inlistpos=i;
}else{
//place this division at parent
g.parent.frameat[g.inlistpos]=p
//adopt old frame if possible

p.inlistpos=g.inlistpos
if (p.object_index == argument4) then{
    uiz_setParent(g,p)
    p.frameat[i]=g  
}else{
    p.frameat[i]=uiz_c(argument4);
    uiz_children_adopt(g, p.frameat[i]);
    uiz_setParent(p.frameat[i],p);
    uiz_destroyobject(g);
}

p.frameat[i].inlistpos=i;
p.frameat[i].x=0
p.frameat[i].y=0
}

//set other properties
p.hasBar[i] = false;
p.minSize[i]=0;
p.minSizeType[i]=px;
p.maxSize[i]=0;
p.maxSizeType[i]=px;

p.divisions++;
//}

