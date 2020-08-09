///uiz_framedivisionhorizontal(object,divisionval,valuetype[px dp or fc],divisionval,valuetype[px dp or fc],........)
/*
Requires you to have a previously created frameset.
Cannot be applied to another anchor, only to a frame assigned to that anchor.
You need to give this function either a frame belonging to a anchor or the frameset itself.
You cannot use this funciton to change how the frameset is divided after it has been divided. You can only use this function to add new divisions and add new anchors.
This will take the given object and replace it with a row-anchor or a col-anchor, depending on which version of the function you called.
It will then create the amount of frames you specified (you specify it by passing an x amount of arguments) at the size you specified.
*/
var p=instance_create(0,0,obj_uiZ_framerowanchor);
p.divisions=(argument_count-1)/2;
var g=argument[0];
var h=g
if g.object_index=obj_uiZ_frameset.object_index then{
g=g.headframe;
var resethead=1
}else{
var resethead=0
}
var f=0;
p.isize[p.divisions-1]=0
p.isizetype[p.divisions-1]=0
p.frameat[p.divisions-1]=0
p.hasBar[p.divisions-1]=0
p.width=g.iwidth;
p.height=g.iheight;
//p.master=g.master

//show_message(g)
//uiz_setparent(p,g)
uiz_setparent(p,argument[0])
//uiz_fixframepos(p)
//uiz_fixgeneralpos(p)
uiz_children_adopt(g,p)
uiz_setparent(p,g.parent)
//uiz_children_adopt(h,p)
//uiz_setparent(p,h)
for(var i=0;i<p.divisions;i++){
var at=i*2+1;
p.isize[i]=argument[at]
p.isizetype[i]=argument[at+1]
//if g=100015 then{dbm(i,p)}
if i>0 then{
p.frameat[i]=uiz_frame_create()
uiz_setparent(p.frameat[i],p)
p.frameat[i].inlistpos=i;
}else{

g.parent.frameat[g.inlistpos]=p
//new codeline:
p.inlistpos=g.inlistpos
uiz_setparent(g,p)
p.frameat[i]=g
p.frameat[i].inlistpos=i;
p.frameat[i].x=0

//if g.parent=obj_uiZ_framerowanchor or g.parent=obj_uiZ_framecolanchor then{g.parent.frameat[i]=p}
}
p.hasBar[i] = false;
}
//uiz_framesetfixhorizontal(p)
if resethead=1 then{argument[0].headframe=p}
return p;
/*
switch(argument[at+1]){
case px:

break;
}
}
