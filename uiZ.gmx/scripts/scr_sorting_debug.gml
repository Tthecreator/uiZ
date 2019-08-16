scr_sort_drawvalues(argument0,argument1) //debug
var p;
//var put,pivot;//in some cases you might want to watch these variables vor debug puposes
//pivot is the current placed that is used to compare values
//put is the division between where things are and arn't compared to the pivot.
//check and sort very small groups left
pivot=arr[argument1]
switch(argument1-argument0){
case 0: 
scr_sort_drawvalue(argument0) //debug
return 0; break;
case 1: 
if arr[argument0]>arr[argument1] then{
p=arr[argument1];
arr[argument1]=arr[argument0];
arr[argument0]=p;
}
scr_sort_drawvalues(argument0,argument1) //debug
return 0;
break;
case 2:
if arr[argument0]>arr[argument1-1] then{
p=arr[argument1-1];
arr[argument1-1]=arr[argument0];
arr[argument0]=p;
scr_sort_drawswap(argument0,argument1-1) //debug
}
if arr[argument0+1]>arr[argument1] then{
p=arr[argument1];
arr[argument1]=arr[argument0+1];
arr[argument0+1]=p;
scr_sort_drawswap(argument0+1,argument1) //debug
}
if arr[argument0]>arr[argument1-1] then{
p=arr[argument1-1];
arr[argument1-1]=arr[argument0];
arr[argument0]=p;
scr_sort_drawswap(argument0,argument1-1) //debug
}
scr_sort_drawvalues(argument0,argument1) //debug
return 0;
break;
}
put=argument0
for(var i=argument0;i<=argument1;i++){
if arr[i]<=pivot then{
p=arr[i];
arr[i]=arr[put];
arr[put]=p;
scr_sort_drawswap(argument1,put) //debug
put++
}
}


if argument0<put-1 then{
scr_sorting_debug(argument0,put-2)
}
if put<argument1 then{
scr_sorting_debug(put,argument1)

}
