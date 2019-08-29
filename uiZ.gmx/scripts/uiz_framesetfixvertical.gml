///uiz_framesetfixvertical(anchor,bool children?)
/*
A more advanced function which requires more knowledge of the interal workings of uiz framesetstructures.
Takes an anchor and "fixes" its division values.
The right function needs to be used with the right type of anchor, else errors might occur.
A more global and easier function would be: uiz_fixframesetpos() which can also be handled by uiz_fixgeneralpos(). 
*/

with(argument0){
uiz_fix_Base_Pos();
uiz_fix_Base_Alpha();
uiz_fix_Base_Margins()
}

if global.debug_action=true then{global.debug_action_count++}
var g=argument0;
//if id=100055 then{sdbm(id,g.width)}
g.starsr=0
var toleft=g.iwidth-g.marginl-g.marginr;
//sdbm("at1",g,g.width,g.iwidth,toleft)
for(var i=0;i<g.divisions;i++){

if g.isize[i]<0 then{g.isize[i]=0}

switch(g.isizetype[i]){
case xtra:
g.starsr+=g.isize[i]
break;
case px:
g.isz[i]=g.isize[i]+g.margincellw*2
toleft-=g.isz[i]
break;
case dp:
g.isz[i]=g.isize[i]*uiz_dp+g.margincellw*2
toleft-=g.isz[i]
break;
case fc: case fcx:
g.isz[i]=g.isize[i]*(g.iwidth-g.marginr-g.marginl)+g.margincellw*2
toleft-=g.isz[i]
break;
case fcy:
g.isz[i]=g.isize[i]*(g.iheight-g.margint-g.marginb)+g.margincellw*2
toleft-=g.isz[i]
break;
}
}
//sdbm("at2",g,i,g.width,g.iwidth,toleft)
if g.starsr>0 then{
if toleft>0 then{
for(var i=0;i<g.divisions;i++){
if g.isizetype[i]=xtra then{
g.isz[i]=(toleft/g.starsr)*g.isize[i];
}
}
}else{
for(var i=0;i<g.divisions;i++){
if g.isizetype[i]=xtra then{g.isz[i]=0;}
}
}
}


if toleft<0 then{
var factor=(g.iwidth-g.marginl-g.marginr)/(g.iwidth-g.marginl-g.marginr-toleft)
for(var i=0;i<g.divisions;i++){g.isz[i]*=factor}
}
//really set the objects sizes
at=g.marginl
for(var i=0;i<g.divisions;i++){
g.doxt[i]=0
//if i=1 then{show_message(at)}
if i>0 and g.frameat[i-1].framesetbar=1 then{
g.frameat[i].x=at+g.margincellw+g.thickness/2
}else{
g.frameat[i].x=at+g.margincellw
}
at+=g.isz[i]
//set the final framesizes
if g.frameat[i].framesetbar=1 then{
if i>0 and g.frameat[i-1].framesetbar=1 then{
g.frameat[i].width=g.isz[i]-g.margincellw*2-g.thickness
}else{
g.frameat[i].width=g.isz[i]-g.margincellw*2-g.thickness/2
}
}else{
if i>0 and g.frameat[i-1].framesetbar=1 then{
g.frameat[i].width=g.isz[i]-g.margincellw*2-g.thickness/2
}else{
g.frameat[i].width=g.isz[i]-g.margincellw*2
}
}
g.frameat[i].height=g.iheight;
//sdbm("at3",g,i,g.width,g.iwidth,toleft,g.frameat[i].width)
if global.isfixinggrandchildren=false then{
uiz_fixgeneralpos(g.frameat[i])
uiz_fixchildren(g.frameat[i],1)
}

if g.frameat[i].object_index=obj_uiZ_framerowanchor then{
g.doxt[i]=1

//show_message("HI")
}
if g.frameat[i].object_index=obj_uiZ_framecolanchor then{
//show_message("yea!")
g.doxt[i]=2

}
}
//if global.isfixinggrandchildren=false then{
//sdbm("CHECKING NOW FOR FURTHERMENT, hor",id)
for(var i=0;i<g.divisions;i++){
//sdbm("[ver] i: "+string(i)+"  gwidth: "+string(g.width)+"  giwidth: "+string(g.iwidth)+"  toleft: "+string(toleft)+"  width: "+string(g.frameat[i].width)+"  height: "+string(g.frameat[i].height))
//global.debug_action=true;
//if global.debug_action=true then{
//global.debug_action_string=global.debug_action_string+chr(10)+chr(13)+string_repeat("      ",global.debug_action_count)+"[ver] i: "+string(i)+"  gwidth: "+string(g.width)+"  giwidth: "+string(g.iwidth)+"  toleft: "+string(toleft)+"  width: "+string(g.frameat[i].width)+"  height: "+string(g.frameat[i].height);
//}
switch(g.doxt[i]){
case 1:
uiz_framesetfixhorizontal(g.frameat[i])
break;
case 2:
uiz_framesetfixvertical(g.frameat[i])
break;
}
//}
}
