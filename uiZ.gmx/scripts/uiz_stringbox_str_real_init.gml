typing=false;
typepos_real=0;
typepos_dis=0;//the position between which characters the type cursor is. 0 is left to the first character and 1 is right of the first character.
typepos_dis_px=0;//pixel position of typeing cursor
count=0;//count the type cursor animation.
if (acceptOnlyNumbers) then{
    str_real = uiz_string_digits(str_real);
    if (acceptOnlyIntegers) then{
        var dot_pos = string_pos(".",str_real);
        if dot_pos!=0 then{
            str_real = string_copy(str_real,1,dot_pos-1);
        }
        //str_real = string_replace_all(str_real,".","");
    }
    if (acceptOnlyPositive) then{
        str_real = string_replace_all(str_real,"-","");
    }
}
str_real_size=string_length(str_real);//the number of characters in the real string
str_dis=str_real;//the string actually displayed
str_dis_width_last=0;//the width of the last character in dis
//if font!=-1 then{draw_set_font(font);}
str_dis_width=0;//the total width of dis
str_dis_size=0;//number of characters in dis
str_dis_begin=0;//the place in str_real where str_dis begins.
str_dis_end=0;//the place in str_real where str_dis ends.
hasselection=false;//whether a selection has been made using the mouse.
hasmouse=false//whether the object has grabbed the mouse
selpos_dis=0;//the place where the second selectionpoint is
selpos_dis_px=0;
selpos_dis_min=-1;//the left place of the selection.
selpos_dis_max=-1;//the right place of the selection.
selpos_dis_min_px=-1;//the left place of the selection.
selpos_dis_max_px=-1;//the right place of the selection.
selpos_dis_min_px_bound=-1;//value bound between ix and ilx
selpos_dis_max_px_bound=-1;//value bound between ix and ilx
sel_str_beg="";//string left of selection as drawn.
sel_str_mid="";//selection string as drawn
sel_str_end="";//string right of seleciton as drawn.
sel_canMove_counter=0;//holds the time between last time being able to shift the box right/left when the mouse goes outside of it vs now. it counts from 0 to 1.
keyboard_oldlastchar="";//holds what char there was last on the keyboard

selpmin=0;//the left real position of the selection
selpmax=0;//the right real position of the selection
sel_str_beg_m="";//string left of selection as drawn. only the updated characters
sel_str_end_m="";//string right of seleciton as drawn.only the updated characters
sel_oldix=ix;
NormalkeyTimer=0;
NormalkeySinglePressTimer=0;
