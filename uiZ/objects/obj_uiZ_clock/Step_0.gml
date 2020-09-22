if time=-1 then{
tm=date_current_datetime();
}else{tm=time}
/*
if os_browser == browser_not_a_browser or time!=-1 then{
    sec=date_get_second(tm);
    if lastsecond!=sec then{atcs=0; lastsecond=sec}
    atcs+=uiz_sc(1);//make the animation last one whole second
}else{//html time inaccuracy bug fix
*/
    atcs+=uiz_sc(1);//make the animation last one whole second
    if atcs>=1 then{
        atcs = 0;
        ++sec;
        if sec>=60 then{
            sec = 0;
        }
    }
//}
/*else{
    
}
*/



ats=uiz_animation_getFunction(atcs,secondanimation)*6
atm=uiz_animation_getFunction(sec/60,minuteanimation)*6

ath=uiz_animation_getFunction(date_get_minute(tm)/60,houranimation)*30
uiz_updater_FixViews();

/* */
/*  */
