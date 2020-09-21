//if init=1 then{alarm[1]=1; init=0;}

uiz_setGridObjects_frame(g)
uiz_resizegridframes(g)
alarm[1]=2;
isloading=3;
if global.loadingobjects=0 then{global.selobj=id}
obj_uiz_designer.rightbarframe.posvalh=max(50,uiz_grid_getminheight(g));
uiz_fixgeneralpos(obj_uiz_designer.rightbarframe)
uiz_fixgeneralpos(g)
//uiz_destroyDsList(updatelist);
//uiz_destroyDsList(updatelistval);
