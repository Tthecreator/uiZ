/// @description uiz_xml_gethandle_dataexists(file,tree,value)
/// @param file
/// @param tree
/// @param value
function uiz_xml_gethandle_dataexistsold(argument0, argument1, argument2) {
	//for the tree use uiz_xml_gettree().
	//with(obj_uiz_xmlparser){
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var t=argument1
	if ds_exists(t,ds_type_list) and ds_list_empty(t) then{return -5;}
	if ds_exists(l,ds_type_list) and !ds_list_empty(l) then{
	//get a handle
	//get levels
	var lsz=ds_list_size(l);
	var tsz=ds_list_size(t);
	levels=0
	for(var i=0;i<tsz;i++){
	if (uiz_positify(t[|i]) mod 8)<4 then{levels++;}
	}
	var level=0;
	var tlevel=0;
	var lastat=-1;
	//sdbm("levels: ",levels)
	var sv=t[|tlevel]>>3;
	var st=t[|tlevel] mod 8;
	for(var i=0;i<lsz;i++){
	//sdbm("i",i)
	lv=round(uiz_positify(l[|i])>>3);
	lt=uiz_positify(l[|i]) mod 8;
	var sv=round(uiz_positify(t[|tlevel])>>3);
	var st=uiz_positify(t[|tlevel]) mod 8;
	//sdbm("st",st)
	//if lt=E
	if lt=7 then{
	//check if this ends something wrong
	for(var e=0;e<=tlevel;e++){
	//sdbm("e1",e)
	var qv=uiz_positify(t[|e])>>3;
	var qt=uiz_positify(t[|e]) mod 8;
	if qv=lv and qt<4 then{
	//found an error
	level--;//sdbm("level--");
	for(var a=e;a>=0;a--){
	//sdbm("a",a)
	var qt=uiz_positify(t[|a]) mod 8;
	if qt<4 then{
	tlevel=a
	break;
	}
	}
	break;
	}
	}
	}else{
	//sdbm("beg",lt,st,i,tlevel,level,tsz,lsz)
	switch(st){
	case 0:
	//A
	//sdbm("A",level,levels,lt,lv,sv)
	// and (level<levels-1 and )
	if lv=sv and (lt=0 or (lt=2 and level=levels-1 and (uiz_positify(l[|i+1]) mod 8)=5) and v[|(round(uiz_positify(l[|i+1])>>3))]=argument2) then{
	//if lv=sv and (lt=0 or (lt=2 and level=levels-1)) then{
	//if lv=sv and (lt=0 or lt=2) then{
	level++;//sdbm("level++1");
	tlevel++;
	lastat=i;
	//sdbm("AX")
	}
	//sdbm("A",lv,sv,lt)
	break;
	case 1:
	//B
	//sdbm("B",lv,sv,lt)


	var orgpos=i;
	if lv=sv and (lt=1 or (lt=3 and level=levels-1)) then{
	//sdbm("0")
	//check for valid data
	if level=levels-1 then{
	var found=0;
	for(var e=i+1;e<lsz;e++){
	var thedatatocheck=(uiz_positify(l[| e]) mod 8)
	if thedatatocheck!=4 and thedatatocheck!=5 then{
	thedatatocheck=(uiz_positify(l[| e-1]) mod 8)
	if thedatatocheck=5 and v[|round(uiz_positify(l[| e-1])>>3)]=argument2 then{
	found=1
	}else{found=-1}
	break;
	}
	}

	if found=-1 then{break;}
	if found=0 then{
	if (uiz_positify(l[| lsz-1]) mod 8)=5 and v[|round(uiz_positify(l[| lsz-1])>>3)]=argument2 then{
	//loop may contine
	}else{break;}
	}
	}
	while((i+2<lsz)){
	//sdbm("while")
	//if (tlevel+2<tsz)
	i++;
	var lt2=(uiz_positify(l[| i]) mod 8);
	var lv2=round(uiz_positify(l[| i])>>3);
	//if lt2=N
	if lt2=4 then{
	if (tlevel+2>=tsz) then{/*not the same info, list has more.*//*sdbm("1")*/break;}
	tlevel++;//sdbm(tlevel,"tlevel++1");
	st=(uiz_positify(t[| tlevel]) mod 8)
	if st=4 then{

	//find lv2 in t.
	var found=0;
	for(var e=tlevel;e<tsz;e++){
	//sdbm("e2",e)
	//sdbm("2.4");
	var tread=round(uiz_positify(t[| e])>>3);
	var treadt=(uiz_positify(t[| e]) mod 8)
	if treadt=4 or treadt=5 and e+1<tsz then{
	//sdbm("2.3");
	if treadt=4 and tread=lv2 then{
	//sdbm("2.2");
	e++;
	tread=round(uiz_positify(t[| e])>>3);
	treadt=(uiz_positify(t[| e]) mod 8);
	i++;
	var lt3=(uiz_positify(l[| i]) mod 8);
	var lv3=round(uiz_positify(l[| i])>>3);
	if lt3=5 then{
	//sdbm("2.1",treadt,d[| tread],v[| lv3]);
	if treadt=5 and d[| tread]=v[| lv3] then{
	//found
	found=1;
	//tlevel+=2
	tlevel++;//sdbm(tlevel,"tlevel++2");
	lastat=orgpos;
	//sdbm("2");
	break;
	}
	}else{
	//end of l info's

	break;
	}
	}
	}else{
	//end of t info's
	break;
	}
	}
	if found=0 then{/*not the same info*/;/*sdbm("3")*/;tlevel--;break;}else{

	}
	}else{/*not the same info, list has more.*//*sdbm("4")*/;tlevel--;break;}
	}else{/*last bit in list data part found*/
	//check if this is also the last bit in the tlist
	//IF <N,I,6,7
	//sdbm("here:",st,round(t[| tlevel+1]>>3),tlevel)
	//if st<4 then{
	if round(uiz_positify(t[| tlevel+1])>>3)<4 then{
	//end of both lists data parts found
	i--;
	break;
	//level++;sdbm("level++2");
	//sdbm(d[|t[|tlevel]],d[|lv])
	  }else{/*not the same info, list has more.*//*sdbm("5")*/;tlevel--;break;}
	}

	}
	//sdbm("6")




	level++;//sdbm("level++3");
	tlevel++//;sdbm(tlevel,"tlevel++3");
	}
	//sdbm("B")
	break;
	case 2:
	//D
	//sdbm("ATD",lv,sv,lt)
	if lv=sv and lt<4 then{
	if level=levels-1 then{
	var found=0;
	for(var e=i+1;e<lsz;e++){
	var thedatatocheck=(uiz_positify(l[| e]) mod 8)
	if thedatatocheck!=4 and thedatatocheck!=5 then{
	thedatatocheck=(uiz_positify(l[| e-1]) mod 8)
	if thedatatocheck=5 and v[|round(uiz_positify(l[| e-1])>>3)]=argument2 then{
	found=1
	}else{found=-1}
	break;
	}
	}

	if found=-1 then{break;}
	if found=0 then{
	if (uiz_positify(l[| lsz-1]) mod 8)=5 and v[|round(uiz_positify(l[| lsz-1])>>3)]=argument2 then{
	//loop may contine
	}else{break;}
	}

	}

	level++;//sdbm("level++4");
	tlevel++;//sdbm(tlevel,"tlevel++4");
	lastat=i;
	}
	break;
	case 3:
	//F



	//sdbm("B",lv,sv,lt)
	var orgpos=i;
	if lv=sv and (lt=1 or (lt=3 and level=levels-1)) then{
	//sdbm("0")

	if level=levels-1 then{
	var found=0;
	for(var e=i+1;e<lsz;e++){
	var thedatatocheck=(uiz_positify(l[| e]) mod 8)
	if thedatatocheck!=4 and thedatatocheck!=5 then{
	thedatatocheck=(uiz_positify(l[| e-1]) mod 8)
	if thedatatocheck=5 and v[|round(uiz_positify(l[| e-1])>>3)]=argument2 then{
	found=1
	}else{found=-1}
	break;
	}
	}

	if found=-1 then{break;}
	if found=0 then{
	if (uiz_positify(l[| lsz-1]) mod 8)=5 and v[|round(uiz_positify(l[| lsz-1])>>3)]=argument2 then{
	//loop may contine
	}else{break;}
	}
	}

	while((i+2<lsz)){
	//sdbm("while")
	//if (tlevel+2<tsz)
	i++;
	var lt2=(uiz_positify(l[| i]) mod 8);
	var lv2=round(uiz_positify(l[| i])>>3);
	//if lt2=N
	if lt2=4 then{
	//sdbm(tlevel,tsz)
	if (tlevel+2>=tsz) then{/*not the same info, list has more.*//*sdbm("1")*/break;}
	tlevel++;
	st=(uiz_positify(t[| tlevel]) mod 8)
	if st=4 then{

	//find lv2 in t.
	//var found=0;
	for(var e=tlevel;e<tsz;e++){
	//sdbm("e3",e)
	//sdbm("2.4");
	var tread=round(uiz_positify(t[| e])>>3);
	var treadt=(uiz_positify(t[| e]) mod 8)
	if treadt=4 or treadt=5 and e+1<tsz then{
	//sdbm("2.3");
	if treadt=4 and tread=lv2 then{
	//sdbm("2.2");
	e++;
	tread=round(uiz_positify(t[| e])>>3);
	treadt=(uiz_positify(t[| e]) mod 8);
	i++;
	var lt3=(uiz_positify(l[| i]) mod 8);
	var lv3=round(uiz_positify(l[| i])>>3);
	if lt3=5 then{
	//sdbm("2.1",treadt,d[| tread],v[| lv3]);
	if treadt=5 and d[| tread]=v[| lv3] then{
	//found
	//found=1;
	//tlevel+=2
	tlevel++;
	lastat=orgpos;
	//sdbm("2");
	break;
	}else{//test
	tlevel--;}
	}else{
	//end of l info's
	//test
	tlevel--;
	break;
	}
	}else{
	//test
	tlevel--;}
	}else{
	//test
	tlevel--;
	//end of t info's
	break;
	}
	}
	//if found=0 then{/*not the same info*/sdbm("3");tlevel--;break;}else{}
	}else{/*not the same info, list has more.*//*sdbm("4")*/;tlevel--;break;}
	}else{/*last bit in list data part found*/
	//check if this is also the last bit in the tlist
	//IF <N,I,6,7
	if st<4 then{
	//end of both lists data parts found
	level++;//sdbm("level++5");
	//sdbm(d[|t[|tlevel]],d[|lv])
	}else{/*not the same info, list has more.*//*sdbm("5")*/;tlevel--;break;}
	}

	}
	//sdbm("6")




	level++;//sdbm("level++6");
	tlevel++;
	}
	//sdbm("D")





	break;
	}
	}
	//sdbm(tlevel,tsz)
	//if tlevel>=tsz or level=levels then{break;}
	if tlevel>=tsz then{break;}
	}
	//sdbm(i,lsz,level,levels,lastat,tlevel,tsz)
	if i<lsz or (i=lsz-1 and level=levels) then{return lastat;}else{/*sdbm("return -1; at pos 1")*/return -1;}

	}else{/*sdbm("return -1; at pos 2")*/return -1;}

	//}



}
