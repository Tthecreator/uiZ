//var f = abs(linearinter)
var f= linearinter

/*
if goback {
f = 1-f;
}
*/

placevalue = uiz_animation_getFunction(f, placeanimation)
widthvalue = uiz_animation_getFunction(f, widthanimation)

/*
if goback then{
placevalue = 1-placevalue;
widthvalue = 1-widthvalue;
}
*/


//sdbm("with f and pvalue being", f, placevalue);

var oldNewpos = newpos;
var oldNewwidth = newwidth;
newpos = lerp(oldTabPos,newTabPos,placevalue);
//sdbm("new pos",newpos, oldTabPos,newTabPos);
var sp = spacinglist[| value]
//sdbm("determining width",value, oldTabWidth,sp,widthvalue)
if(!is_real(sp)){sp=10;
sdbm("[uiZ|ERROR] The new tabbar indicator width could not be determined.")}

newwidth = lerp(oldTabWidth,sp,widthvalue)

//update view
//sdbm("upd sli bot");
uiz_updater_FixViews_area_selfmarked(min(newpos,oldNewpos),tabY,max(newpos+newwidth,oldNewpos+oldNewwidth),rly)
updateBar=true;

if f = 1 then {
    //done animating
    uiz_updater_unstep();
    updated=false;
    if oldvalue != value then {
    }
    oldvalue=value;
    linearinter = 0;
}
