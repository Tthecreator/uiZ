function uiz_fixwindowpos_legacy(argument0) {
	var t=argument0;
	with(t){
	/*
	if lastparent!=parent then{
	//sdbm("fixing this depth for",id,parent,lastparent)
	lastparent=parent
	uiz_window_fixadddepth()
	//sdbm("fixed this depth for",id,parent,lastparent)
	}
	/*
	/*
	if sizestatus=2 then{
	posinframex=uiz_fill
	posinframey=uiz_fill
	}else{
	posinframex=uiz_static
	posinframey=uiz_static
	}
	*/
	uiz_fix_Base_Pos()

	switch(contain){
	case 1:
	var py=uiz_getposy(barsize,barsizevaltype);
	x=max(-width+py,x)
	y=max(-height+py,y)
	x=min(parent.width-py,x)
	y=min(parent.height-py,y)
	break;
	case 2:
	var py=uiz_getposy(barsize,barsizevaltype);
	x=max(-width+py*4,x)
	y=max(0,y)
	x=min(parent.width-py,x)
	y=min(parent.height-py,y)
	break;
	case 3:
	x=max(0,x)
	y=max(0,y)
	x=min(parent.width-width,x)
	y=min(parent.height-height,y)
	break;
	}

	lx=x+width+parent.addx
	ly=y+height+parent.addy
	rx=parent.rx+x+parent.addx
	ry=parent.ry+y+parent.addy
	rlx=parent.rx+lx
	rly=parent.ry+ly

	//dbm("gonnan check insdieframe")
	inframe=uiz_insideframe()
	//dbm("done check insdieframe",inframe)

	//


	if uiz_updater_hasPositionChanged() then{
	//--uiz_doclear=true;
	//sdbm("setting doclear to true",)
	//find objects at the same position to update
	uiz_updater_FixViews()
	}
	//uiz_dodraw=true;
	//uiz_compatibility_windowdepth_fix4()


	main_alpha=head_alpha*parent.main_alpha
	//main_alpha=1;
	alpha=image_alpha*main_alpha
	posinframex=uiz_static;
	posinframey=uiz_static;
	uiz_fix_Base_Margins();
	uiz_fix_Background();
	if instance_exists(id) then{
	//sdbm("called it 2")
	uiz_fixChildren(id,1)
	//sdbm("called it 3")
	}

	}




}
