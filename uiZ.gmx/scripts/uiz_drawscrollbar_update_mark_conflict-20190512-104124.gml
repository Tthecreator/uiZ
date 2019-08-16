///uiz_drawscrollbar_update_mark(scroll)
//marks a scrollbar for update without actually updating its view
//this is usefull if you know you have to update an area of an object that includes the scrollbar.
if uiz_drawscrollbar_getUpdated(argument0)=0 then{
return argument0+0.003*uiz_sign(argument0);
}else{
return argument0;
}
