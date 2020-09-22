var unstep=false;
if oldvalue=true then{
inbetvalue-=uiz_sc(switchtime);
if inbetvalue<=0 then{oldvalue=value;
unstep=true;
inbetvalue = 0;
}
}else{
inbetvalue+=uiz_sc(switchtime);
if inbetvalue>=1 then{oldvalue=value;
inbetvalue=1;
unstep=true;
}
}
oldMinX = knobX;
oldMinY = knobY;
oldMaxX = knobX+knobSizePx;
oldMaxY = knobY+knobSizePx;
uiz_switch_calculatePosition();
if unstep then{
update=false;
uiz_updater_unstep();
uiz_updater_FixViews();
}
else{
uiz_updater_FixViews_area(min(oldMinX,knobX),min(oldMinY,knobY),max(oldMaxX,knobX+knobSizePx),max(oldMaxY,knobY+knobSizePx));
}

