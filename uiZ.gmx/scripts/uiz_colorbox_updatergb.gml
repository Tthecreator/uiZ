#define uiz_colorbox_updatergb
///uiz_colorbox_updatergb(update r?, update g?,update b?, update values?, direct?)
if argument0=true then{
if argument3 then{
r=colour_get_red(c.color)

uiz_colorbox_setsliderval(boxred,r/255,argument4)
}
boxred.color1=make_color_rgb(0,g,b)
boxred.color2=make_color_rgb(255,g,b)

}
if argument1=true then{
if argument3 then{
g=colour_get_green(c.color)
uiz_colorbox_setsliderval(boxgreen,g/255,argument4)}
boxgreen.color1=make_color_rgb(r,0,b)
boxgreen.color2=make_color_rgb(r,255,b)
}
if argument2=true then{
if argument3 then{
b=colour_get_blue(c.color)
uiz_colorbox_setsliderval(boxblue,b/255,argument4)}
boxblue.color1=make_color_rgb(r,g,0)
boxblue.color2=make_color_rgb(r,g,255)
}
valred.value=r
valgreen.value=g
valblue.value=b
valh.value=h
vals.value=s
valv.value=v

#define uiz_colorbox_setsliderval
if argument2 then{
uiz_slider_setvalue_static(argument0,argument1);
}else{
uiz_slider_setvalue(argument0,argument1);
}