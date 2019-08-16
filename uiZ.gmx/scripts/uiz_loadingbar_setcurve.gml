///uiz_loadingbar_setcurve(instanceid,animation function constant,bool update )
//value: a value between 0 and 1 how far the bar should be filled.
//update: if (parts of) the bar should automatically be redrawn or not. Use this if you aren't sure whether the object's view will be updated in the future.
//When setting this script right after creating the object, auto update should be false.
gml_pragma("forceinline");
with(argument0){
animation=argument1;
if argument2=true then{
uiz_loadingbar_update();
}
}
