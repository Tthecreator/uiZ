///uiz_insideframe_ext(inwhat,towho)
p=argument0
a=argument1
if a.y+p.addy>p.height 
or a.x+p.addx>p.width or a.lx<0 or a.ly<0
then{return 0;}else{
if a.rlx>p.rlx or a.rly>p.rly then{
if p.rlx=global.screenpxwidth and p.rly=global.screenpxheight then{return 2;}else{return 1;}

}
if a.x<0 or a.y<0 then{if p.rx<0 and p.ry<0 then{return 2;}else{return 1;}}
else{
return 2;}}
