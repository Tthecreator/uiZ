uiz_textarea_resetsel_p1()
uiz_textarea_resetsel_p2()
if selp1line<selp2line then{
//p1 is first
selpminline=selp1line
selpmaxline=selp2line
selpmin=selp1;
selpmax=selp2;
selpxmin=selpx1;
selpxmax=selpx2;
}else{
if selp1line=selp2line then{
//p1 and p2 on same line
selpminline=selp1line
selpmaxline=selp2line
if selpx1<selpx2 then{
selpmin=selp1;
selpmax=selp2;
selpxmin=selpx1;
selpxmax=selpx2;
}else{
if selpx1=selpx2 then{
hasselection=false;
}
selpmin=selp2;
selpmax=selp1;
selpxmin=selpx2;
selpxmax=selpx1;
}
}else{
//p2 is first
selpminline=selp2line
selpmaxline=selp1line
selpmin=selp2;
selpmax=selp1;
selpxmin=selpx2;
selpxmax=selpx1;
}

}
