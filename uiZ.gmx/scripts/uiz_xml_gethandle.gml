///uiz_xml_gethandle(file,tree)
//gets a handle to a part in the file given by the tree.
//example:
//file:
//  <test>
//    <something>data</something>
//  </test>
//
//code:
//tree = uiz_xml_gettree(file,test/something)
//handle = uiz_xml_gethandle(file,tree)
//data = uiz_xml_readtag(handle)

//get a handle
var m=obj_uiz_xmlparser.id;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var t=argument1
if ds_exists(t,ds_type_list) and ds_list_empty(t) then{return 0;}
if ds_exists(l,ds_type_list) and !ds_list_empty(l) then{
var lsz=ds_list_size(l);
var tsz=ds_list_size(t);
var prowild=0
var prowildlevel=-1;
var 
//get levels
levels=0
//sdbm("loop1")
for(var i=0;i<tsz;i++){
if (uiz_positify(t[|i]) mod 8)<4 then{levels++;}
}
//sdbm("loopend")
var level=0;
var tlevel=0;
var lastat=-1;
var findend=0
if levels>0 then{
//sdbm("loop2")
for(var i=0;i<lsz;i++){
findend=0
var lv=round(uiz_positify(l[|i])>>3);
var lt=uiz_positify(l[|i]) mod 8;
var sv=uiz_positify(t[|tlevel])>>3;
var st=uiz_positify(t[|tlevel]) mod 8;
//sdbm("loop3")
while((st=4 or st=5) and tlevel<tsz){
tlevel++;
var sv=uiz_positify(t[|tlevel])>>3;
var st=uiz_positify(t[|tlevel]) mod 8;
}
//sdbm("loopend")
//check for wildcard
if st=6 and lt<4 then{
//wildcard

lastat=i;
//level++;
//sdbm("level++ at wildcard",level,levels)
prowild=1;
prowildlevel=level;
tlevel++;
}else{
//if prowild=1 then{}else{
//process non-wildcard cases
switch(lt){
case 2:
//T
//sdbm("T",d[|lv],d[|sv])
if level!=levels-1 then{findend=1; break;}
//no break;
case 0: 
//H
if (st=0 or st=2) and lv=sv then{
lastat=i;
level++;
tlevel++;
}else{
findend=1
}
break;
case 3: case 6:
//O,E
if level!=levels-1 then{findend=1; break;}
//no break;
case 1:
//K
if (st=1 or st=2 or st=3) and lv=sv then{

//find range in the l list
var endi=lsz;
var endilevels=0
//sdbm("loop4")
for(var e=i+1;e<lsz;e++){
var rt=uiz_positify(l[|e]) mod 8;
if rt!=4 and rt!=5 then{
endi=e-1
break;
}
}
//sdbm("loopend")
endilevels=endi-i;
//find range in the t list
var endt=tsz-1
var endtlevels=0
//sdbm("loop5")
for(var e=tlevel+1;e<tsz;e++){
var rt=uiz_positify(t[|e]) mod 8;
if rt!=4 and rt!=5 then{
endt=e-1
//sdbm("endt!",endt,rt,l[|e],e,l[|e]>>3)
break;
}
}
//sdbm("loopend")
endtlevels=endt-tlevel;

switch(st){


case 1:
//B
//sdbm("B",endilevels,endtlevels,i)
if endilevels!=endtlevels then{findend=1 break;}
//end of B, which should continue in F
case 3:
//sdbm("F")
//F
if lv!=sv then{findend=1 break;}
var found=0;
//sdbm("loop6")
for(var e=tlevel+1;e<endt;e+=2){
//take group of 2
if e+1<tsz then{
var s1v=uiz_positify(t[|e])>>3;
var s1t=uiz_positify(t[|e]) mod 8;
var s2v=uiz_positify(t[|e+1])>>3;
var s2t=uiz_positify(t[|e+1]) mod 8;
if s1t=4 and s2t=5 then{
var insidefound=0;
//find data inside of the l
for(var u=i+1;u<endi;u+=2){
if u+1<=endi then{
var l1v=uiz_positify(l[|u])>>3;
var l1t=uiz_positify(l[|u]) mod 8;
var l2v=uiz_positify(l[|u+1])>>3;
var l2t=uiz_positify(l[|u+1]) mod 8;
if l1t=4 and l2t=5 then{
//sdbm(d[|l1v],d[|s1v],v[|l2v],d[|s2v])
if d[|l1v]=d[|s1v] and v[|l2v]=d[|s2v] then{insidefound=1; break;}
}else{break;}
}
}
if insidefound=0 then{findend=1;break;}else{found++;}
}else{
//end of data
break;
}
}else{break;}
}
//sdbm("foundat",found,endtlevels/2)
if found<endtlevels/2 then{findend=1;break;}else{
//found al endtlevels, add one

lastat=i;
level++;
tlevel++;
//sdbm("level++1",lastat,level,t[|tlevel-1]>>3,t[|tlevel-1] mod 8)
}


break;
case 2:
//D
//var rt=l[|i] mod 8;
if lv=sv then{
lastat=i;
//sdbm("level++2")
level++;
tlevel++;
}else{
findend=1
}
break;
default:
//cant find a compatible tag
findend=1;
break;


}

}else{
if lt!=6 then{
findend=1}
}
break;
}
//}
}


if level=levels then{break;}
if lt=2 or lt=3 or lt=6 or (level=prowildlevel and prowild=1) then{findend=0;}
if findend=1 then{
findend=0;
//find end
var findwhat=lv
var found=0;
//sdbm("loop7")
for(var e=i+1;e<lsz;e++){
var lv=round(uiz_positify(l[|e])>>3);
var lt=uiz_positify(l[|e]) mod 8;
//var ls=v[|lv]
if lv=findwhat and lt=7 then{found=1;break;}
}
//sdbm("loopend")
if found=0 or e>=lsz-1 then{
//an endless tag was found, or on the end
//sdbm("return -1; at pos 2, endless tag was found",findwhat,d[|findwhat])
return -1;
}
//e++;
if found=1 then{
i=e//+1
}
}

}
//sdbm("loopend")
////sdbm(i,lsz,level,levels)
if i<lsz or (i=lsz-1 and level=levels) then{return lastat;}else{
//sdbm("return -1; at pos 1",i,lsz,level,levels)
return -1;}

}else{return -5;}

}
return -1;
