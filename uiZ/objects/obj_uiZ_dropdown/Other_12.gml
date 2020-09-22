if kmouseover=uiz_nomouse and (ucolor!=buttoncolor or icolor!=buttontrianglecolor) then{
    ucolor=buttoncolor;
    icolor=buttontrianglecolor;
    updatebutton=true;
    uiz_updater_FixViews_area_selfmarked(rlx+buttonmargin-buttonsz,ry+height/2-buttonsz/2+buttonmargin,rlx-buttonmargin,ry+height/2+buttonsz/2-buttonmargin);
}

