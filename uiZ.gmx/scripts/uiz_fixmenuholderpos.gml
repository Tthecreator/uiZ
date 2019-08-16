var t=argument0;
with(t){
uiz_fix_Base();
c=0;
inframe=uiz_insideframe()
for(var i=0;i<totobjects;i++){
var mo=objectat[i];
mo.y=c
c+=itemsz[i]
}
menupxsize=c
menulastpx=c-height
uiz_fixchildren(id,1)

}


