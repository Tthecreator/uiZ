//if uscroll<0 then{uscroll=-1-scroll}else{uscroll=scroll}
if height>=width then{
uiz_drawscrollbar_vertical_step(rx,ry,rlx,rly,uscroll,scrolllines,middlemousescroll,scrollspeed,scrollbarAnimation, scrollbarAnimationTime);
}else{
uiz_drawscrollbar_horizontal_step(rx,ry,rlx,rly,uscroll,scrolllines,middlemousescroll,scrollspeed,scrollbarAnimation, scrollbarAnimationTime);
}
scroll=uiz_drawscrollbar_getValue(uscroll);

