///uiz_loadingbar_update();
//updates the loadingbar, whenever the progress changes.
var new_p=round(rx+width*uiz_animation_getFunction(value,animation));
if new_p!=p then{
var ox=min(new_p,p);
var olx=max(new_p,p);
p=new_p;
uiz_updater_FixViews_addsquare(ox,ry,olx,rly)
}
