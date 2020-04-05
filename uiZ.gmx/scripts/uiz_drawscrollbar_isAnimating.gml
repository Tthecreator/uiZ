///uiz_drawscrollbar_isAnimating(scroll)
//check whether a scrollbar is in an animation.
//scroll: a scrollvalue created by uiz_drawscrollbar_init and handled by other uiz_drawscrollbar_ functions.
return (argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor] != 1);
