///INTERNAL UIZ SCRIPT, KEEP OFF
var hcol = colour_get_hue(argument0);
var scol = colour_get_saturation(argument0);
var vcol = colour_get_value(argument0);
if vcol < 128 then {
    vcol += argument1*coloringfactor_value*128
} else {
    vcol -= argument1*coloringfactor_value
}

if scol < 128 then {
    scol += argument1*coloringfactor_saturation
} else {
    scol -= argument1*coloringfactor_saturation
}

return make_color_hsv(hcol,scol,vcol);
