inframe=uiz_insideframe()
if parent.view_fix=false and (uiz_forceFixView or uiz_updater_hasPositionChanged()) then{
view_fix=false
uiz_forceFixView=false;
//find objects at the same position to update
uiz_updater_FixViews()
}
uiz_dodraw=true;
//sdbm("going to fixViews","marked for draw",uiz_dodraw)


uiz_compatibility_depthfix()
uiz_fix_Base_Alpha();
if uiz_diddepth=false then{
//sdbm("now executing children stuff")
uiz_fix_Depth()
}
