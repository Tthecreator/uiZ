///uiz_stringbox_shiftright()
//shifts the selection of the box 1 to the left.
//returns if any trimming of the dis-view has happened.
var trimmed=false;
if str_dis_end<str_real_size then{
str_dis_end++;
var addchar=string_char_at(str_real,str_dis_end);
//d+="shift right with: "+addchar+"#";
var addchar_width=string_width(addchar);
str_dis_size++;
str_dis_width+=addchar_width;
str_dis+=addchar;
if selpmax>=str_dis_end then{
sel_str_mid+=addchar;
}else{
sel_str_end+=addchar;
   // d+="    end add 1: "+addchar+"#";
}

//d+="addd: "+addchar+"-#";
//sdbm("add to right",addchar,addchar_width,str_dis_size);
var sel_beg_sz = string_length(sel_str_beg);
var sel_end_sz = string_length(sel_str_end);
while(str_dis_width>floor(i_ilx-ix)){
    trimmed=true;
    var remchar=string_char_at(str_dis,1)
    var remchar_size=string_width(remchar);
    str_dis_size--;
    str_dis=string_copy(str_dis,2,str_dis_size);
    str_dis_width-=remchar_size;
    typepos_dis_px -=remchar_size;
    typepos_dis--;

    

    str_dis_begin++;
    /*
    sel_end_sz--;
    if sel_end_sz>0 then{
    sel_str_end=string_copy(sel_str_end,2,sel_end_sz);
    }
    */
    //if hasselection=true then{//handle selection
    
        
        selpos_dis_max--;
        selpos_dis_max_px-=remchar_size;
        selpos_dis--;
        selpos_dis_px -=remchar_size;
        selpos_dis_min--;
        selpos_dis_min_px-=remchar_size;
   // d+="hassel#";
        if sel_beg_sz=0 then{
        //if typepos_dis<=0 then{
        //remove char from mid string
        sel_str_mid=string_copy(sel_str_mid,2,string_length(sel_str_mid)-1);
        //}
        }else{
        //if typepos_dis-sel_beg_sz<0  then{
        //remove char from begin string
        //d+="remove char from begin string#";
        
        sel_beg_sz--;//hold the new size
        sel_str_beg=string_copy(sel_str_beg,2,sel_beg_sz);
        //}
        }
    //}
}
uiz_stringbox_getselbounds();
if typepos_dis<0 and !hasselection then{
typepos_dis=0;
typepos_dis_px=ix;
//if !hasselection then{
uiz_stringbox_typepos_real_from_dis();
//}
}

if selpos_dis<0 then{
selpos_dis=0;
selpos_dis_px=ix;
}

uiz_stringbox_typecursor_register();
uiz_updater_FixViews_inside();
}
return trimmed;
