///uiz_drawdslist_updateviews(old,newx,newy,newlx,newly,osel,nsel)
//INTERNAL SCRIPT BY UIZ, PLEASE DONT USE

if argument0=true and argument5!=-1 and oldvalid=true then{
updater_old=argument5;
ar_sel_ox=ar_sel_nx;
ar_sel_oy=ar_sel_ny;
ar_sel_olx=ar_sel_nlx;
ar_sel_oly=ar_sel_nly;
uiz_updater_FixViews_area_selfmarked(ar_sel_ox,ar_sel_oy,ar_sel_olx,ar_sel_oly)}
oldvalid=true;
updater_new=argument6;
ar_sel_nx=argument1;
ar_sel_ny=argument2;
ar_sel_nlx=argument3;
ar_sel_nly=argument4;
uiz_updater_FixViews_area_selfmarked(ar_sel_nx,ar_sel_ny,ar_sel_nlx,ar_sel_nly);
