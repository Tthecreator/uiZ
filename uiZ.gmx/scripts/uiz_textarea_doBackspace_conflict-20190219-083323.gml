sdbm("doBackS1",selection1Char);
var lineSize = string_length(textList[| selection1Line]);
var lsz = ds_list_size(textList);
if selection1Char==lineSize && argument0 then{//if we're at the end of the line and we want to do a delete
    if selection1Line+1<lsz then{
        textList[| selection1Line+1] = string_copy(textList[| selection1Line+1], 2, string_length(textList[| selection1Line+1]))
    }
}else{
    if selection1Char==0 && !argument0 then{//if we're at the beginning of the line and we want to do a backspace
        if selection1Line>1 then{
            textList[| selection1Line-1] = string_copy(textList[| selection1Line-1],1,lineSize-1);
        }
    }else{
        textList[| selection1Line] = uiz_removechar(textList[| selection1Line],selection1Char+argument0);
        if argument0 == 0 then{
            --selection1Char;
        }
    }
}

sdbm("doBackS2",selection1Char);

var selLine = selection1Line;
var linesChanged = uiz_textarea_rework(true,selLine-1);
sdbm("doBackS3",selection1Char);
switch(linesChanged){
    case 0://no line/only one line has changed
        uiz_textarea_rework_selection();
        uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine-1),ilx,uiz_textarea_getlineY(selLine+1));
    break;
    case 1:
        uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine-1),ilx,ily);
    break;
    case 2:
        uiz_updater_FixViews_area(ix,iy,ilx,ily);
    break;
}

