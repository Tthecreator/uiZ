///uiz_win31_addicon(parent,text,sprite,pos)
var but=uiz_c(obj_uiZ_swipicon)
uiz_setparent(but,argument0)
but.posinframex=dp
but.posinframey=dp
but.posvalx=0.1+(argument3 mod 5)*0.6
but.posvaly=0.1+(argument3 div 5)*0.75
but.posvalwtype=dp
but.posvalhtype=dp
but.posvalw=0.5
but.posvalh=0.65
but.sprite=argument2
but.text=argument1

but.texturescript=uiz_back_square
but.color_normal=c_white
but.margin_normal=0
but.color_out=topcolor
uiz_fixgeneralpos(but)
return but;
