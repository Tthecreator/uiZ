/// @description call this on the createevent of a uiz object.
function uiz_objinit() {
	/*
	A important script initializing all basic variables for an uiz object.
	Needs to be called in the create event of every uiz object. 
	*/
	width=10
	height=10
	lx=x+width
	ly=y+height
	children=-1
	listpos=-1
	uiz_initparent()
	rx=parent.rx+x
	ry=parent.ry+y
	rlx=parent.rx+lx
	rly=parent.ry+ly
	ix=rx;
	iy=ry;
	ilx=rlx;
	ily=rly;
	iwidth=width;
	iheight=height;
	sx=rx
	sy=ry
	slx=rlx
	sly=rly
	inframe=1
	posinframex=uiz_static
	posinframey=uiz_static
	//posinframex=px
	//posinframey=px
	posvalx=0
	posvaly=0
	posvalw=0
	posvalh=0
	containposvx=uiz_nocontain
	containposvy=uiz_nocontain
	//posvalxtype=uiz_nonpos
	posvalwtype=uiz_nonpos
	//posvalytype=uiz_nonpos
	posvalhtype=uiz_nonpos
	addx=0
	addy=0
	containframe=-1
	incontainframe=0
	setpointx=uiz_auto
	setpointy=uiz_auto
	spx=0;
	spy=0;
	topframemargin=0;
	rightframemargin=0;
	bottomframemargin=0;
	leftframemargin=0;
	end_topframemargin=0;
	end_rightframemargin=0;
	end_bottomframemargin=0;
	end_leftframemargin=0;
	uiz_shader=1
	/////was forcecontain=false;
	forcecontain=true;
	thisforcecontain=0;
	//containtowhosparent=id
	depth=0
	uiz_compatibility_objinit()
	cntnx=0
	cntny=0
	cntnlx=0
	cntnly=0
	cntnrx=0
	cntnry=0
	cntnrlx=0
	cntnrly=0
	oldcntnx=0
	oldcntny=0
	oldcntnlx=0
	oldcntnly=0
	ucontainin=id
	kmouseover=0
	destroy=0
	alpha=1
	main_alpha=1
	head_alpha=1
	image_alpha=1
	//destroychildren=0
	function_x=uiz_straight
	function_y=uiz_straight
	function_w=uiz_straight
	function_h=uiz_straight
	function_a=uiz_straight
	function_time=0.5
	uiz_enabled=true;

	destroyxfunction=uiz_straight;
	destroyyfunction=uiz_straight;
	destroyafunction=uiz_straight;
	destroyspeed=0.5;

	oldx=0;
	oldy=0;
	olda=0;
	oldw=0;
	oldh=0;

	newx=0;
	newy=0;
	newa=0;
	neww=0;
	newh=0;

	function_count=-1;
	//keepupdating=0
	shadow=false;
	shadowL=0.1;
	shadowR=0.25;
	shadowLtype=dp;
	shadowRtype=dp;
	shadowT=0.1;
	shadowB=0.25;
	shadowTtype=dp;
	shadowBtype=dp;
	topmargin=0;
	bottommargin=0;
	leftmargin=0;
	rightmargin=0;
	uiz_nused=0;

	uiz_dodraw=true;
	uiz_doredraw=false;
	uiz_diddepth=false;
	uiz_forceFixView=false;

	uiz_doclear=false;
	last_rx=rx;
	last_ry=ry;
	last_rlx=rlx;
	last_rly=rly;
	last_cntnx=cntnx;
	last_cntny=cntny;
	last_cntnlx=cntnlx;
	last_cntnly=cntnly;

	/*
	save_rec_rx=0;
	save_rec_ry=0;
	save_rec_rlx=0;
	save_rec_rly=0;
	save_rec_last_rx=0;
	save_rec_last_ry=0;
	save_rec_last_rlx=0;
	save_rec_last_rly=0;
	*/
	//uiz_objlistpos=ds_list_size(obj_uiZ_controller.uiz_objlist)
	//ds_list_add(obj_uiZ_controller.uiz_objlist,id);

	//instance_deactivate_object(id)
	hasbackground=false;
	usebackgroundmargins=true;
	bkspr=0;
	bkcol=c_white;
	bkmar=0;
	texas=-1;

	inanimation=false;
	animation_updatechildren=true;

	sx=rx
	sy=ry
	slx=rlx
	sly=rly

	//uiz_bx=0;
	//uiz_by=0;
	uiz_selfmarked=false;
	enablemousecheck=true;

	uiz_steps=false;
	uiz_steps_begin=false;
	uiz_steps_scrollable=false;

	uiz_update_script = noone
	uiz_update_script_argument = 0;

	bkspr_old=bkspr;
	bkcol_old=bkcol;
	bkmar_old=bkmar;
	texas_old=texas;

	view_fix=false;



}
