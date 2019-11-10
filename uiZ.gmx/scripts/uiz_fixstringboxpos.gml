var t=argument0;
with(t){
var oldiwidth=iwidth;
uiz_fix_Base();
//qstr="";
//uiz_stringbox_get_str_dis_width();
i_ilx = ilx-40;
if oldiwidth!=iwidth then{
    if str_dis_width<floor(i_ilx-ix) && str_dis_end == str_real_size then{
        //snap end to right
        while(str_dis_begin>0 && str_dis_width<floor(i_ilx-ix)){
            //uiz_stringbox_shiftleft();
        }
    }
    uiz_stringbox_resetdis();
    sel_oldix=ix;
}
}

