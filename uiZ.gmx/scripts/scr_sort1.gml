///scr_sort1(begin,end)

var p;
switch(argument1-argument0){
case -1: return 0; break;
case 0: return 0; break;
case 1: return 0; break;
case 2: 
if arr[argument0]>arr[argument1] then{
p=arr[argument1];
arr[argument1]=arr[argument0];
arr[argument0]=p;
}
return 0;
break;
/*
case 3:
if arr[argument0]>arr[argument1-1] then{
p=arr[argument1-1];
arr[argument1-1]=arr[argument0];
arr[argument0]=p;
}
if arr[argument0+1]>arr[argument1] then{
p=arr[argument1];
arr[argument1]=arr[argument0+1];
arr[argument0+1]=p;
}
if arr[argument0]>arr[argument1-1] then{
p=arr[argument1-1];
arr[argument1-1]=arr[argument0];
arr[argument0]=p;
}
return 0;
break;
*/
}
//if argument1>99 then{show_message("how?")}
var pivot=arr[argument1]
var put=argument0
for(var i=argument0;i<argument1;i++){
//dbm(argument0,argument1,i)
if arr[i]<=pivot then{
//show_message("swapping: "+string(i)+" and "+string(put))
//if i=9 then{show_message("non!")}
//if put=100 then{dbm(argument0,argument1,i)}
p=arr[i];
arr[i]=arr[put];
arr[put]=p;
put++
}
}
if put=argument1 then{
//everything is smaller than the pivot
//if put-1=-1 then {dbm(argument1-argument0)}
scr_sort1(argument0,put-1)
return 0;
}
//put pivot next to values lower than it
//if put>99 then{dbm(put,argument1,pivot,argument1-argument0)}
p=arr[argument1];
arr[argument1]=arr[put];
arr[put]=p;
//show_message(pivot)
//dbm(put,argument1,pivot,argument1-argument0)
//check the 2 groups
//show_message("halt#"+string(put)+"#"+string(argument1))
scr_sort1(put,argument1)
//if put-1=9 then{show_message(put-1)}
scr_sort1(argument0,put-1)


