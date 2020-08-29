///uiz_insideframe()

//check the inframe
var p=parent;
inframe=0;
/*
cntnx=floor(max(p.ix,p.cntnx));
cntny=floor(max(p.iy,p.cntny));
cntnlx=floor(min(p.ilx,p.cntnlx));
cntnly=floor(min(p.ily,p.cntnly));
*/
last_cntnx=cntnx;
last_cntny=cntny;
last_cntnlx=cntnlx;
last_cntnly=cntnly;
cntnx=floor(max(rx,p.cntnx,p.ix));
cntny=floor(max(ry,p.cntny,p.iy));
cntnlx=floor(min(rlx,p.cntnlx,p.ilx));
cntnly=floor(min(rly,p.cntnly,p.ily));

return uiz_squareInSquare(rx,ry,rlx,rly,cntnx,cntny,cntnlx,cntnly);
