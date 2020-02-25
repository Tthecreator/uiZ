///uiz_stringbox_deletechar(char position)
/*deletes a character in a stringbox
This is a script originally intended for use within the obj_uiZ_stringbox object, and thus you'll have to put this function inside a with-construction as follows:
with(stringbox instance id){sdbm(uiz_stringbox_getselectionstring())} 
*/



//remove part from real string
//sdbm("  dc",string_copy(str_real,1,argument0-1),string_copy(str_real,argument0+1,str_real_size-argument0))
str_real=string_copy(str_real,1,argument0-1)+string_copy(str_real,argument0+1,str_real_size-argument0);
str_real_size=string_length(str_real);
updated = true;
update = true;
uiz_updater_step_endcheck();


uiz_stringbox_resetdis();//reset the view string

//if str_dis_width<iwidth && str_dis_size<str_real_size && str_dis_end=str_real_size then{//check to shift selection to end
//    uiz_stringbox_disToEnd();
//}
    
//reset view
uiz_updater_FixViews_inside();

