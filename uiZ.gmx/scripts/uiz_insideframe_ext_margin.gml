///uiz_insideframe_ext(inwhat,towho)
p=argument0
a=argument1
if a.y+p.addy-a.topbordermargin>p.height 
or a.x+p.addx-a.leftbordermargin>p.width or a.lx+a.rightbordermargin<0 or a.ly+a.bottombordermargin<0
then{return 0;}else{
if a.rlx+a.rightbordermargin>p.rlx or a.rly+a.bottombordermargin>p.rly then{
if p.rlx=global.screenpxwidth and p.rly=global.screenpxheight then{return 2;}else{return 1;}
//return 1;

}
//or a.x+p.addx<0 or a.y+p.addy<0
//if a.x<0 or a.y<0 then{if p.rx=0 and p.ry=0 then{return 2;}else{return 1;}}
if a.x<a.leftbordermargin or a.y<a.topbordermargin then{if p.rx<=0 and p.ry<=0 then{return 2;}else{return 1;}}
//if a.x+p.addx<0 or a.y+p.addy<0 then{if p.rx=0 and p.ry=0 then{return 2;}else{return 1;}}
else{return 2;}}
