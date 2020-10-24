update=0;
if animation then{
//sdbm("anicount",anicount,fromh,h);
if fromh!=h or froms!=s then{
inh=fromh+(uiz_animation_getFunction(anicount,hanimationtype)*(h-fromh))
ins=froms+(uiz_animation_getFunction(anicount,sanimationtype)*(s-froms))
///rgb
var fnc=uiz_animation_getFunction(anicount,rgbanimationtype);
inr=fromr+(fnc*(tor-fromr))
ing=fromg+(fnc*(tog-fromg))
inb=fromb+(fnc*(tob-fromb))

anicount+=uiz_sc(anicountspeed);
update=1;
if anicount>=1 then{inh=h; fromh=h; ins=s; froms=s; anicount=0;updated=1;
    uiz_updater_unstep();
}
uiz_updater_FixViews();
}else{
//if abs(fromh-h)>0 or abs(froms-s)>0 then{update=1; uiz_updater_FixViews();}
inr=tor
ing=tog
inb=tob
fromh=h
inh=h
froms=s
ins=s
anicount=0


fromr=colour_get_red(color)
fromg=colour_get_green(color)
fromb=colour_get_blue(color)

}

}else{
    uiz_updater_unstep();
}

//color=make_colour_hsv(h,s,v)
tocolor=make_color_rgb(tor,tog,tob)
tor=colour_get_red(color)
tog=colour_get_green(color)
tob=colour_get_blue(color)
incolor=make_colour_rgb(inr,ing,inb)
icolor=make_colour_hsv(128+inh,255-ins,255)
//sdbm("update value: ",update);

