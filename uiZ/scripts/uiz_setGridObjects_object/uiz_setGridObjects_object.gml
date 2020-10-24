/// @description uiz_setGridObjects_object(grid, object)
/// @param grid
/// @param  object
function uiz_setGridObjects_object(argument0, argument1) {
	/*
	Fills a grid up with a given object at argument1 so every time you call uiz_gridObject() it will return the instance id of the specified object.
	ONLY CALL THIS SCRIPT ONCE AFTER CREATING THE GRID.
	It might be slightly more performance intensive if you use frames (uiz_setGridObjects_frame()) for everything if you just like to have a row of buttons or something.
	In that case uiz_setgridobject uiz_setGridObjects_script might be a better solution. 
	*/
	var g=argument0;

	var framew=((g.parent.width-g.marginl-g.marginr)/g.gridw);
	var frameh=((g.parent.height-g.margint-g.marginb)/g.gridh);
	for(var i=0;i<g.gridh;i++){
	for(var e=0;e<g.gridw;e++){
	if g.generated=0 then{
	var f=uiz_c(argument1);
	f.iscover=0;
	g.gridobject[e,i]=f
	if e=0 then{
	uiz_gridSize_row(g,i,1,xtra)
	}
	if i=0 then{
	uiz_gridSize_col(g,e,1,xtra)
	}
	}else{
	f=g.gridobject[e,i];
	f.iscover=0;
	}
	//f.parent=g
	uiz_setParent(f,g)
	f.x=e*(framew)+g.marginl+g.margincellw
	f.y=i*(frameh)+g.margint+g.margincellh
	f.width=framew-g.margincellw*2
	f.height=frameh-g.margincellh*2
	uiz_fixgeneralpos(f)
	}
	}
	g.generated=1




}
