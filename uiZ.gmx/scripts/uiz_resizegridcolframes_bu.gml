var w;
var g=argument0;
g.starsr=0
var toleft=g.parent.width-g.marginl-g.marginr
for(var i=0;i<g.gridh;i++){
switch(g.colsizetype[i]){
case px:
g.rh[i]=g.colsize[i]+g.margincellw*2
toleft-=g.rh[i]
break;
case dp:
g.rh[i]=g.colsize[i]*display_get_dpi_x()+g.margincellw*2
toleft-=g.rh[i]
break;
case fc:
g.rh[i]=g.colsize[i]*(g.parent.width-g.marginr-g.marginl)+g.margincellw*2
toleft-=g.rh[i]
break;
case xtra:
g.starsr+=g.colsize[i]
//show_message(g.starsr)
break;
}

}


if g.starsr>0 then{
if toleft>0 then{
for(var i=0;i<g.gridh;i++){
if g.colsizetype[i]=xtra then{
g.rh[i]=(toleft/g.starsr)*g.colsize[i];
//show_message("toleft: "+string(toleft)+"#g.starsr: "+string(g.starsr)+"#g.colsize[i]: "+string(g.colsize[i])+"#g.rh[i]: "+string(g.rh[i]))
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
var factor=(g.parent.width-g.marginl-g.marginr)/(g.parent.width-g.marginl-g.marginr-toleft)
for(var i=0;i<g.gridw;i++){g.rh[i]*=factor}
}
//really set the objects
var at=g.marginl
for(var i=0;i<g.gridw;i++){
var framew=((g.parent.width-g.marginl-g.marginr)/g.gridw);
at1=at
at+=g.rh[i]-g.margincellw*2
at2=g.rh[i]-g.margincellw*2
//show_message(at)
at+=g.margincellw*2
var last=-10;
for(var e=0;e<g.gridh;e++){
//i*(frameh)+g.marginl+g.margincellh
//show_message("y set to: "+string(at1))
var o=g.gridobject[i,e];
if o!=last then{
if o.iscover=0 or o.fromx=i then{o.x=at1 o.width=-g.margincellw}
if o.iscover=1 then{o.width+=at2+g.margincellw*2
if o.tox=i then{o.width-=g.margincellw}}
if o.iscover=0 then{o.width=at2}
uiz_fixframepos(g.gridobject[i,e])
uiz_fixChildren(g.gridobject[i,e],0)
last=o
}
}
}
