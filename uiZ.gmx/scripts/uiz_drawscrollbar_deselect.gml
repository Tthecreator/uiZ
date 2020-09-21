///uiz_drawscrollbar_deselect(x1,y1,x2,y2,orientation,scroll)
//takes a scrollbar and removes any state involving the mouse.
//This should be called whenever the mouse used to be on the object but now isn't anymore. (Call in User Defined 2 when kmouseover==0)
argument5[@uiz_drawscrollbar_struct.uiz_dsb_mstate_last] = argument5[@uiz_drawscrollbar_struct.uiz_dsb_mstate];
argument5[@uiz_drawscrollbar_struct.uiz_dsb_mstate] = 0;
uiz_drawscrollbar_update_view(argument0,argument1,argument2,argument3,argument4,0,argument5[@uiz_drawscrollbar_struct.uiz_dsb_mstate_last],argument5[@uiz_drawscrollbar_struct.uiz_dsb_updated])
