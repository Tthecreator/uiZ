/*deletes any selected text on a stringbox
This is a script originally intended for use within the obj_uiZ_stringbox object, and thus you'll have to put this function inside a with-construction as follows:
with(stringbox instance id){sdbm(uiz_stringbox_getselectionstring())} 
*/

//remove part from real string
str_real=string_copy(str_real,1,selpmin)+string_copy(str_real,selpmax+1,str_real_size-selpmax);
str_real_size=string_length(str_real);
updated = true;
update = true;
uiz_updater_step_endCheck();
typepos_dis_px=selpos_dis_min_px;
var updateBeginPoint=selpos_dis_min_px;

//recalculate dis-view string    
    if (selpmin<str_dis_begin){
        //sel was on the left
        str_dis_begin=selpmin;
        updateBeginPoint=ix;
    }
    uiz_stringbox_resetdis();//reset the view string
    if str_dis_width<iwidth && str_dis_size<str_real_size && str_dis_end=str_real_size then{//check to shift selection to end
        uiz_stringbox_disToEnd();
    }
    
//remove selection
typepos_real=selpmin;
uiz_stringbox_typepos_dis_from_real();
typing=true;
selpos_dis=0;
uiz_stringbox_selection_disable();

//reset view
uiz_updater_FixViews_area(updateBeginPoint,iy,ilx,ily);
