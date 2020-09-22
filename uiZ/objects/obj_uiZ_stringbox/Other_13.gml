/// @description handle mouse state
if kmouseover>0 and uiz_getmouse_x()<i_ilx then{uiz_set_cursor(cr_beam)}else{
uiz_set_cursor(cr_default);
}

uiz_stringbox_event_disableMouseGrab();

//if uiz_getmouse_x()<i_ilx then{
uiz_stringbox_event_makeSelections();
//}

///check buttons
if numberCounter_enable then{
button_state_max = uiz_draw_spriteButton_step(i_ilx,max(iy+iheight/2-ilx_minwidth,iy),ilx,iy+iheight/2,button_state_max);
button_state_min = uiz_draw_spriteButton_step(i_ilx,iy+iheight/2,ilx,min(iy+iheight/2+ilx_minwidth,ily),button_state_min);

var addVal = 0;

if uiz_positify(button_state_max)==uiz_mousereleased then{
    addVal += 1;
    button_state_count = 0;
    button_state_max_count_rapid = 1;
}else{
    if uiz_positify(button_state_max)==uiz_mouseclick then{
        button_state_count+=uiz_sc(numberCounter_rapidTimer)
    }
}

if uiz_positify(button_state_min)==uiz_mousereleased then{
    addVal -= 1;
    button_state_count = 0;
    button_state_max_count_rapid = 1;
}else{
    if uiz_positify(button_state_min)==uiz_mouseclick then{
        button_state_count+=uiz_sc(numberCounter_rapidTimer)
    }
}

if button_state_count>=1 then{//if we should be rapid typing
    button_state_max_count_rapid+=uiz_sc(numberCounter_rapidSpeed);
    if (button_state_max_count_rapid>=1){
        button_state_max_count_rapid = 0;
        
        //increase correct state
        if uiz_positify(button_state_max)==uiz_mouseclick then{
            addVal += 1;
        }else{
            addVal -= 1;
        }
        
    }
}

if(addVal<0 and acceptOnlyPositive && real(str_real)<1){ addVal=0; uiz_stringbox_setvalue(id,"0"); }//fix bug when acceptOnlyPositive is enabled pressing - on a 0 results in a 1 while it shouldn't do anything.

if addVal!=0 then{
    //sdbm("testVal1",str_real);
    //sdbm("testVal2",str_real,uiz_string_real_getIntLength(str_real),uiz_string_real_getFracLength(str_real))
    //uiz_stringbox_setvalue(id, string_format(real(str_real)+addVal*numberCounter_interval,uiz_string_real_getIntLength(str_real),uiz_string_real_getFracLength(str_real)));
    uiz_stringbox_setvalue(id, real(str_real)+addVal*numberCounter_interval);
    uiz_stringbox_disableSelection(id);
    
}


}

