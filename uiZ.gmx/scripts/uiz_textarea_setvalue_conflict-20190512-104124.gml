///uiz_textarea_setvalue(instanceid,value[""])
with(argument0){
uiz_textarea_resetSelection(argument0);
ds_list_clear(textList);//clear list
uiz_textarea_addLinesFromString(argument1);//divide input into lines
var lsz = ds_list_size(textList);
lastReworkAvWidth=iwidth;
if lsz*fontHeight>iheight then{
    doscroll=true;
    scrolllines=lsz*fontHeight-iheight;
}else{
    doscroll=false;    
}

if doscroll=true then{
    scroll=-1;
    uiz_textarea_rework(false,0);
}
uiz_fix_Base_View_FixViews();
}
