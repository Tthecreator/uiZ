///uiz_window_topbarsettings(instanceid,barsize[0.25],barsizevaltype[dp])
gml_pragma("forceinline");
argument0.barsize=argument1;
argument0.barsizevaltype=argument2;
/*
with(argument0){

if instance_exists(h) and array_length_1d(h.isize)>0 and array_length_1d(h.isizetype)>0 and (h.isize[0]!=barsize or h.isizetype[0]!=barsizevaltype) then{
//sdbm("setting now",barsizetype,px)
uiz_framedivisionsetvalue(h,0,barsize,barsizevaltype)
uiz_framesetfixhorizontal(h)
}

var st=barsizevaltype;
if st=fc then{st=fcy}

if instance_exists(h2) and array_length_1d(h2.isize)>1 and array_length_1d(h2.isizetype)>1 and (h2.isize[1]!=barsize*3 or h2.isizetype[1]!=st) then{
uiz_framedivisionsetvalue(h2,1,barsize*3,barsizevaltype)
uiz_framesetfixvertical(h2)
}

}
