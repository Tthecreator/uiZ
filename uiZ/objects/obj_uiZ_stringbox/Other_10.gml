if uiz_cntn() then{
    uiz_stringbox_event_draw();
    if numberCounter_enable then{
        //draw buttons
        if !uiz_selfmarked or button_state_min<0 then{
            uiz_draw_spriteButton_state(i_ilx,round(iy+iheight/2),ilx,min(iy+round(iheight/2)+round(ilx_minwidth),ily),numberCounter_minButtonColor,numberCounter_minButtonOnColor,numberCounter_minButtonOverColor,numberCounter_minButtonSprite,1,button_state_min);
        }
        if !uiz_selfmarked or button_state_max<0 then{
            uiz_draw_spriteButton_state(i_ilx,max(iy+round(iheight/2)-round(ilx_minwidth),iy),ilx,round(iy+iheight/2),numberCounter_maxButtonColor,numberCounter_maxButtonOnColor,numberCounter_maxButtonOverColor,numberCounter_maxButtonSprite,1,button_state_max);
        }
    }
    uiz_containend()
}

