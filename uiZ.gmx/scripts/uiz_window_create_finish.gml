///uiz_window_create_finish()
fs=uiz_frameset_create()
uiz_setparent(fs,id)


uiz_framesetfixparent(fs)
h=uiz_framedivisionhorizontal(fs,barsize,barsizevaltype,1,xtra)
uiz_fixgeneralpos(fs)
topbar=h.frameat[0]
h2=uiz_framedivisionvertical(topbar,1,xtra,barsize*(button_cross+button_maximize+button_minimize),barsizevaltype)
buttons=h2.frameat[1]
//the cross button
if button_cross=1 then{
cross=uiz_easybutton_create(spr_uiZ_windowbuttons)
uiz_setparent(cross,buttons)
cross.posinframex=fc
cross.posvalx=2/3
cross.posvalwtype=fcy
cross.posvalw=1
cross.posinframey=uiz_fill
cross.containtowhosparent=id
cross.depth=-10;
uiz_fixgeneralpos(cross)
}
//the maximize button
if button_maximize=1 then{
maxim=uiz_easybutton_create(spr_uiZ_windowbuttons)
uiz_setparent(maxim,buttons)
maxim.posinframex=fc
maxim.posvalx=2/3-(1/3)*button_cross
//maxim.width=buttons.height
maxim.posvalwtype=fcy
maxim.posvalw=1
maxim.posinframey=uiz_fill
maxim.containtowhosparent=id
maxim.spraddto=3
maxim.depth=-10;
uiz_fixgeneralpos(maxim)
}
//the minimize button
if button_minimize=1 then{
minim=uiz_easybutton_create(spr_uiZ_windowbuttons)
uiz_setparent(minim,buttons)
minim.posinframex=fc
minim.posvalx=2/3-(1/3)*button_cross-(1/3)*button_maximize
//minim.width=buttons.height
minim.posvalwtype=fcy
minim.posvalw=1
minim.posinframey=uiz_fill
minim.containtowhosparent=id
minim.spraddto=6
minim.depth=-10;
uiz_fixgeneralpos(minim)
}

mainframe=h.frameat[1]
mainframe.topmargintype=px
mainframe.topmargin=8;
/*
var tp=lastparent;
lastparent=parent;
uiz_fixwindowpos(id)
lastparent=tp;
*/
