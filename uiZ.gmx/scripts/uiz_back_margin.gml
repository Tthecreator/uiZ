///uiz_back_margin(margins, [n backmode])
var oldrx=rx;
var oldry=ry;
var oldrlx=rlx;
var oldrly=rly;
var oldwidth=width;
var oldheight=height;
//dbm("executing from here,",rx,ry,rlx,rly)
//draw_square(rx,ry,rlx,rly,c_red,1)
rx-=argument[0];
ry-=argument[0];
rlx+=argument[0];
rly+=argument[0];
width+=argument[0]*2;
height+=argument[0]*2;

if argument_count>=2 then{uiz_back(argument[1])}else{
uiz_back()}

rx=oldrx;
ry=oldry;
rlx=oldrlx;
rly=oldrly;
width=oldwidth;
height=oldheight;
