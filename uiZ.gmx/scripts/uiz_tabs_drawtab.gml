///uiz_tabs_drawtab(xx,w,sel,tabi)
var xx=argument0;
var w=argument1;
var sel=argument2;
var i =argument3;
uiz_back_at(xx-purgeLeftMargin,ry-purgeTopMargin,xx+w+purgeRightMargin,rly+purgeBottomMargin,sel)
//draw text
draw_set_color(textcolor)
var centerfix;
switch(halign){
case fa_left:
centerfix=(margin_normal+tabmargin)/2
break;
case fa_right:
centerfix=-(margin_normal+tabmargin)/2
break;
default:
centerfix=0;
break;
}
draw_text(xx+w*(halign/2)+centerfix,ry+height*(valign/2),uiz_getText_contained(tablist[| i],w))

