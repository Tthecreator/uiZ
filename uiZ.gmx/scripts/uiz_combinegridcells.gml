///uiz_combinegridcells(grid,col1,row1,col2,row2)
/*
A VERY HOT SCRIPT. Call only after you're sure that the grid doesn't need to be ajusted (normal position fixing scripts are ok).
Gets 2 cells in a grid and makes them and everything between them into one cell.
The "row1" and "col1" arguments need to be the most top-left cell and the "row2" and "col2" you most bottom-right cell.
Because this overlaps some references, there might be some problems when trying to resize the grid afterwards (or even problems in general).
*/
var g=argument0
var f1=g.gridobject[argument1,argument2]
var settowith=f1.width+g.margincellw
var settoheight=f1.height+g.margincellh
//transfer all items to the first frame
if !ds_exists(f1.children,ds_type_list) then{f1.children=ds_list_create()}
for(i=argument1;i<=argument3;i++){
for(e=argument2;e<=argument4;e++){
var f2=g.gridobject[i,e];

if !(i=argument1 and e=argument2) then{
if e=argument2 then{settowith+=f2.width+g.margincellw*2}
if i=argument1 then{settoheight+=f2.height+g.margincellh*2}


var sz=ds_list_size(f2.children);
for(var p=0;p<sz;p++){
uiz_setparent(f2.children[| 0],f1)
}
//remove frame
//ds_list_delete(g.children,f2.)
uiz_removeframe(f2)
g.gridobject[i,e]=f1
}
}
}
//set frame to full size
f1.width=settowith-g.margincellw
f1.height=settoheight-g.margincellh
uiz_fixframepos(f1)
uiz_fixchildren(f1,1)
f1.fromx=argument1
f1.fromy=argument2
f1.tox=argument3
f1.toy=argument4
f1.iscover=1
