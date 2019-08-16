///regenerate a grid
with(argument0){
markings=0;
openings=0;
won=-1;
if !ds_exists(minegrid,ds_type_grid) then{minegrid=ds_grid_create(sizex,sizey)}
if ds_grid_width(minegrid)!=sizex and ds_grid_height(minegrid)!=sizey then{ds_grid_resize(minegrid,sizex,sizey)}
/***************************************************
  The following rules apply for the values in the grid:
  last 3 bits of numbers specify what there is at the location where:
        0: mine
        1: nothing
        2: a 1
        3: a 2
        ...
        9: a 8
  the 4th bit (the 4th smallest bit) of the number specifies whether a square has been clicked
  the 5th bit of the number specifies if the square has been flagged.
  4 and 5 are false by default so we don't need to worry about those values when createing a grid.
 ***************************************************/
//reset all
var rx,ry,i,e;
for(i=0;i<sizex;i++){
for(e=0;e<sizey;e++){
minegrid[# i,e]=1;
}
}
//place mines at random positions
var mns=min(mines,sizex*sizey-1)
repeat(mns){
var notfound=true;
while(notfound){
var rx=irandom(sizex-1);
var ry=irandom(sizey-1);
if minegrid[# rx,ry]=1 then{
minegrid[# rx,ry]=0;
notfound=false;
}
}
}
//check number of mines for every cell:
for(i=0;i<sizex;i++){
for(e=0;e<sizey;e++){
if minegrid[# i,e]=1 then{//if there is no mine (1=nothing)
var minecount=1;
//left cells
if i>0 then{//if statements to prevent checks ouside grid
if e>0 and minegrid[# i-1,e-1]=0 then{minecount++}//top
if minegrid[# i-1,e]=0 then{minecount++}//middle
if e<sizey-1 and minegrid[# i-1,e+1]=0 then{minecount++}//bottom
}
//right cells
if i<sizex-1 then{//if statements to prevent checks ouside grid
if e>0 and minegrid[# i+1,e-1]=0 then{minecount++}//top
if minegrid[# i+1,e]=0 then{minecount++}//middle
if e<sizey-1 and minegrid[# i+1,e+1]=0 then{minecount++}//bottom
}

if e>0 and minegrid[# i,e-1]=0 then{minecount++}//top
if e<sizey-1 and minegrid[# i,e+1]=0 then{minecount++}//bottom

//set cell
minegrid[# i,e]=minecount;
}


}
}




}
