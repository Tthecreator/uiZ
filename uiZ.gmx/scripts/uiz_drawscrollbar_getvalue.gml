///scroll=uiz_drawscrollbar_getvalue(scroll)
/*
returns how far a scrollbar has scrolled inside a scrollbar's "scroll" value.
The "scroll" value is the value used and returned by the normal uiz_drawscrollbar_ functions.
*/
return round(argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll]);
//return floor(uiz_positify(argument0));

