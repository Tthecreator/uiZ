var t=argument0;
with(t){
if ds_exists(uselist,ds_type_list) then{
height=margin
for(var i=0;i<ds_list_size(uselist);i++){height+=margin+string_height(string(uselist[| i]))}
}else{
height=margin}
//width=string_width(text)
uiz_drawdslist_checkview();
uiz_fix_Base();
updater_old=-1;
updater_new=-1;
if addy=0 then{scroll=uiz_drawscrollbar_setvalue(scroll,0)}
scrollwidth=uiz_getposx_self(scrollbarwidth,scrollbarwidthtype);
updatescroll=true;
scrollheight=max(0,uiz_drawdslist_checkheight());
if scrollheight>0 then{doscroll=true}else{doscroll=false;scrollwidth=0;}
if uiz_drawscrollbar_getvalue(scroll)>scrollheight then{
scroll=uiz_drawscrollbar_setvalue(scroll,scrollheight)
}
//addy=min(0,-scroll*(height-parent.height))
addy=-uiz_drawscrollbar_getvalue(scroll)
}

