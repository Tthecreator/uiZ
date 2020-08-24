with(obj_uiz_designer){
//dbm("hi")
view++
if view>2 then{view=0}
switch(view){
case 0: uiz_framedivisionsetvalue(f,1,1,xtra)uiz_framedivisionsetvalue(f,0,0,px) uiz_setParent(af,taf) af.posvalh=f.height uiz_fixgeneralpos(af) break;
case 1: uiz_framedivisionsetvalue(f,0,1,xtra)uiz_framedivisionsetvalue(f,1,0,px) uiz_setParent(af,taf) af.posvalh=0 uiz_fixgeneralpos(af) break;
case 2: uiz_framedivisionsetvalue(f,0,1,xtra)uiz_framedivisionsetvalue(f,1,0,px) uiz_setParent(af,tf) af.posvalh=f.height uiz_fixgeneralpos(af) break;
}
uiz_fixframesetpos(fset)
}

