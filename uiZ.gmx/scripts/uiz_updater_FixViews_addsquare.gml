//sdbm("BEGINNING updating for 1",object_get_name(object_index),irandom(9),argument0,argument1,argument2,argument3)
var l=obj_uiZ_controller.uiz_arealist
var sz=ds_list_size(l);



//debug shortcut to the end
//ds_list_add(l,argument0,argument1,argument2,argument3)
//return true;


//if sz mod 4=0 then{
var drawstate=true;
///*

for(var i=0;i<sz;i+=4){
if argument1<=l[|i+1] and argument3>=l[|i+3] and argument2>=l[|i+2] and argument0<=l[|i] then{

l[|i]=argument0;
l[|i+1]=argument1;
l[|i+2]=argument2;
l[|i+3]=argument3;


drawstate=false;break;

//sdbm("    breakiong down 1",object_get_name(object_index),irandom(9))
}
//check left and side
if argument1>=l[|i+1] and argument3<=l[|i+3] then{
if argument0>=l[|i]   and argument2<=l[|i+2] then{
//sdbm("    breakiong down 2",object_get_name(object_index),irandom(9))
drawstate=false;break;
}
if argument2>=l[|i] and argument0<=l[|i] and argument2<=l[|i+2] then{
//left
//sdbm("from:", argument0,argument2, "and: ", l[|i], l[|i+2])
argument2=l[|i]+1;

//sdbm("    breakiong down 5",argument2,object_get_name(object_index),irandom(9))
//sdbm("arg2, 0")
}else{
if argument0<=l[|i+2] and argument2>=l[|i+2] and argument0>=l[|i] then{
//right
argument0=l[|i+2]-1;
//sdbm("  setting ",argument0," to ",l[|i+2], "from:",argument2, "and: ", l[|i], l[|i+2])
//sdbm("    breakiong down 6",object_get_name(object_index),irandom(9))
//sdbm("arg0, 2")
}
}

}else{

if argument0>=l[|i] and argument2<=l[|i+2] then{
if argument3>=l[|i+1] and argument1<=l[|i+1] and argument3<=l[|i+3] then{
//top
//sdbm("    breakiong down 3",object_get_name(object_index),irandom(9))
argument3=l[|i+1];
//sdbm("arg3, 1")
}else{
if argument1<=l[|i+3] and argument3>=l[|i+3] and argument1>=l[|i+1] then{
//bottom
//sdbm("    breakiong down 4",object_get_name(object_index),irandom(9))
argument1=l[|i+3];
//sdbm("arg1, 3")
}
}
}
}
if (i>=obj_uiZ_controller.uiz_arealist_oldsz){
i++;//add one if we are using the object containing listing
}
}
//*/
//sdbm("END",drawstate)
if drawstate=true then{
ds_list_add(l,argument0,argument1,argument2,argument3)
return true;
}

return false;
