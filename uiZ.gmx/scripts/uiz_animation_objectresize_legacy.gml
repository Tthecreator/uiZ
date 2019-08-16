///uiz_animation_objectresize_legacy(object,posinframex,posinframey,setpointx,setpointy,newx,newy,newwidth,newheight,animationtype,formulatype or animationtimepoints,speed)
//object : the object this transformation applies to
//posinframex,posinframey : the transformationtype the object has to be, look at the macro's list for options
//setpointx, setpointy: if unsure set to uiz_auto. to which point of the object posinframe should apply to. takes uiz_left,middle,right,top,bottom.
//newx,y,width,height : may nog be necessary for every posinframx, but for uiz_static this could be usefull if you need to set the object to specific coordinates.
//animationtype : uiz_animationtype_single or multi. Where this should be one formula defined by a macro, or a multipoint animation type. if this is a multipoint, use the variable graph to change settings to the animation but be sure to refer to this object.
//formulatype if animationtype is uiz_animationtype_single: look in the macro's list for possible formulas.
            //if animationtype is uiz_animationtype_multi: the number of points in the animation. any number above 0 is fine.
//speed : how fast the animation should go. between 0 and 1. 0.1 means that it will take 10 steps to finish the animation and 1 means it will take one step.           
//return : the resize instance id. needed to call if (resizeinstanceid.isdone) then{}
/*From manual:
0-object : the object this transformation applies to
1-posinframex,posinframey : the transformationtype the object has to be, look at the macro's list for options
2-setpointx, setpointy: To which point of the object posinframe should apply to. takes uiz_left,middle,right,top,bottom and auto. If unsure set to uiz_auto.
3-newx,y,width,height : may nog be necessary for every posinframx, but for uiz_static this could be usefull if you need to set the object to specific coordinates.
4-animationtype : uiz_animationtype_single or multi. Where this should be one formula defined by a macro, or a multipoint animation type. If this is a multipoint, use the variable graph to change settings to the animation but be sure to refer to this object.
For _single see: "Animations in general".
For _multi see: "Advanced animations" and look close to the information about "uiz_animation_applyto"
If unsure, use uiz_animationtype_single.
5-formulatype if animationtype is uiz_animationtype_single: look in the macro's list for possible formulas.
If animationtype is uiz_animationtype_multi: the number of points in the animation. Any number above 0 is fine.
6-speed : how fast the animation should go between 0 and 1. 0.1 means that it will take 10 steps to finish the animation and 1 means it will take one step. 
return : the resize instance id. Needed to call if (resizeinstanceid.isdone) then{}
*/
var o=argument0
var r=instance_create(0,0,obj_uiZ_resizer)
with(r){
toobject=o
animationtype=argument9
countspeed=argument11
//store old values
fromx=o.x
fromy=o.y
fromwidth=o.width
fromheight=o.height
//set and get new values
toposinframex=argument1
toposinframey=argument2
tosetpointx=argument3
tosetpointy=argument4
//o.posinframex=argument1
//o.posinframey=argument2
//o.setpointx=argument3
//o.setpointy=argument4
//o.x=argument5
//o.y=argument6
//o.width=argument7
//o.height=argument8
uiz_fixgeneralpos(o)
//tox=o.x
//toy=o.y
//towidth=o.width
//toheight=o.height
tox=argument5
toy=argument6
towidth=argument7
toheight=argument8

if argument9=uiz_animationtype_single then{
graph=argument10
}else{
graph=uiz_animation_create_legacy(argument10)
}
}
return r;
