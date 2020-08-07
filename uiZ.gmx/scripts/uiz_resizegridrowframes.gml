/*
The functions "uiz_resizegridframes", "uiz_resizegridrowframes" and "uiz_resizegridcolframes" are the "fixing" scripts of grid structures.
The "uiz_resizegridframes" is a combinations of the "row" and "col" scripts.
Also handled by uiz_fixgeneralpos.
*/
var w;
var g=argument0;
g.starsr=0
if g.marginsonsidestb=false then{
//var ssf=(g.parent.height+g.margincellh*2)//*((g.margincellw*(g.gridw*2))/(g.margincellw*(g.gridw*2-2)))
var ssf=(g.height+g.margincellh*2)
}else{var ssf=g.height;}

var toleft=ssf-g.margint-g.marginb
for(var i=0;i<g.gridh;i++){
switch(g.rowsizetype[i]){
case px:
g.rh[i]=g.rowsize[i]+g.margincellh*2
toleft-=g.rh[i]
break;
case dp:
g.rh[i]=g.rowsize[i]*uiz_dp+g.margincellh*2
toleft-=g.rh[i]
break;
case fc:
g.rh[i]=g.rowsize[i]*(ssf-g.marginb-g.margint)+g.margincellh*2
toleft-=g.rh[i]
break;
case xtra:
g.starsr+=g.rowsize[i]
break;
}

}


if g.starsr>0 then{
if toleft>0 then{
for(var i=0;i<g.gridh;i++){
if g.rowsizetype[i]=xtra then{
g.rh[i]=(toleft/g.starsr)*g.rowsize[i];
}
}
}else{
//if toleft<=0
for(var i=0;i<g.gridh;i++){
g.rh[i]=0
}
}
}


if toleft<0 then{
var factor=(ssf-g.margint-g.marginb)/(ssf-g.margint-g.marginb-toleft)
for(var i=0;i<g.gridh;i++){g.rh[i]*=factor}
}
//really set the objects
var at=g.margint
for(var i=0;i<g.gridh;i++){
//var frameh=((ssf-g.margint-g.marginb)/g.gridh);

if g.marginsonsidestb=false and (i=0 or i=g.gridh-1) then{var domar=0
if i=g.gridh-1 then{var domarright=g.margincellh;}else{var domarright=0}
//if i=0 then{
}else{var domar=g.margincellw; var domarright=domar;}
if g.marginsonsidestb=false and i=0 then{var domarleft=0}else{var domarleft=g.margincellh}

at1=at
at+=g.rh[i]//-g.margincellh*2
at2=g.rh[i]-g.margincellh*2
//at+=g.margincellh*2
var last=-10;
for(var e=0;e<g.gridw;e++){
//sdbm(e,i,g.gridw)
var o=g.gridobject[e,i];
if o!=last then{
if o.iscover=0 or o.fromy=i then{o.y=round(at1+domarright-domarleft) o.height=-domar}
if o.iscover=1 then{
//show_message(o.height)
o.height+=at2+domar*2
if o.toy=i then{o.height-=domar}
//show_message(o.height)
}
if o.iscover=0 then{o.height=at2}
o.height = round(o.height);
uiz_fixgeneralpos(g.gridobject[e,i])
uiz_fixchildren(g.gridobject[e,i],0)
last=o
}
}
}
