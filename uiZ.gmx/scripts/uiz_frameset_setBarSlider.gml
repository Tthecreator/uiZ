///uiz_frameset_setBarSlider(dividerAnchorId, position, enable)
//enable or disable a slider between two frames ( between position and position+1)
with(argument0){
    if argument1>=0 and argument1<array_length_1d(hasBar)-1 then{
        hasBar[argument1]=argument2;
    }
    draw = true;//enable drawing
    uiz_frameset_forceFixSize(argument0);
}
