var t=argument0;
with(t){

if uselist!=-1 and ds_exists(uselist,ds_type_list) then{
var sz=ds_list_size(uselist)
width=1;
height=margin_normal*2-margin;
for(var i=0;i<sz;i++){width=max(string_width(string(uselist[| i])),width)
height+=margin+string_height(string(uselist[| i]))}
}
width+=10

uiz_fix_Base();

if width>parent.width then{x=0;width=parent.width;uiz_fixobjectpos(id)}
if width>parent.height then{y=0;height=parent.height;uiz_fixobjectpos(id)}

if rlx>parent.rlx then{x-=rlx-parent.rlx;uiz_fixobjectpos(id)}
if rly>parent.rly then{y-=rly-parent.rly;uiz_fixobjectpos(id)}
if rx<parent.rx then{x+=parent.rx-rx;uiz_fixobjectpos(id)}
if ry<parent.ry then{y+=parent.ry-ry;uiz_fixobjectpos(id)}
}

