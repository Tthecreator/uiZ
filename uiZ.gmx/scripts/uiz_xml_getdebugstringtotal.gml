var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var sz=ds_list_size(l)
var str=""
for(var i=0;i<sz;i++){
var p = uiz_positify(l[| i]);
switch(p mod 8){
case 0: str+="H"+string(d[|p>>3])+chr($0A) break;
case 1: str+="K"+string(d[|p>>3])+chr($0A) break;
case 2: str+="T"+string(d[|p>>3])+chr($0A) break;
case 3: str+="O"+string(d[|p>>3])+chr($0A) break;
case 4: str+="N"+string(d[|p>>3])+chr($0A) break;
case 5: str+="I"+string(v[|p>>3])+chr($0A) break;
case 6: str+="C"+string(d[|p>>3])+chr($0A) break;
case 7: str+="E"+string(d[|p>>3])+chr($0A) break;
}
}
return str;
