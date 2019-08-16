///uiz_insideframe()
if y+parent.addy>parent.height 
or x+parent.addx>parent.width or lx<0 or ly<0
then{return 0;}else{
if lx>parent.width or ly>parent.height 
or x+parent.addx<0 or y+parent.addy<0
then{
return 1;
}else{return 2;}}
