if width>height then{
var moveSpace = width-height*knobsize-max(bkmar*2,height*0.2);
var begSpace = max(bkmar,height*0.1)//+height*knobsize/2;
knobSizePx = round(height*knobsize);
knobX = round(rx+begSpace+moveSpace*uiz_animation_getfunction(inbetvalue,animation))
knobY = round(ry+height/2-knobSizePx/2);

}else{
var moveSpace = height-width*knobsize-max(bkmar*2,width*0.2)
var begSpace = max(bkmar,width*0.1)//+width*knobsize/2
knobSizePx = round(width*knobsize);
knobX = round(rx+width/2-knobSizePx/2)
knobY = round(ry+begSpace+moveSpace*uiz_animation_getfunction(inbetvalue,animation));
}
