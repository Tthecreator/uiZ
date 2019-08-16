var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var sz=ds_list_size(l)
var str=""
for(var i=0;i<sz;i++){
switch(uiz_positify(l[| i]) mod 8){
case 0: str+="H"+string(uiz_positify(l[| i])>>3) break;
case 1: str+="K"+string(uiz_positify(l[| i])>>3) break;
case 2: str+="T"+string(uiz_positify(l[| i])>>3) break;
case 3: str+="O"+string(uiz_positify(l[| i])>>3) break;
case 4: str+="N"+string(uiz_positify(l[| i])>>3) break;
case 5: str+="I"+string(uiz_positify(l[| i])>>3) break;
case 6: str+="C"+string(uiz_positify(l[| i])>>3) break;
case 7: str+="E"+string(uiz_positify(l[| i])>>3) break;
}
}
return str;
