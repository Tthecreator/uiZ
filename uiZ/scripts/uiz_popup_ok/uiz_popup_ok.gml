/// @description uiz_popup_ok(text, windowText, blockBackground,[optional]font)
/// @param text
/// @param  windowText
/// @param  blockBackground
/// @param [optional]font
function uiz_popup_ok() {
	//returns a windowid or a framid(if blockbackground)
	//the background is a half opaque black box, that prevents any mouseclicks in the background. blockbackground should equal 1 if you want this.
	//you need uiz to be initialized for this. make sure uiz_init is called somewhere in your project.
	//font is optional, but the font does need to be the same on create as on whatever the draw event leaves behind.
	/*
	uiz_popup_ok(text,windowtext,blockbackground,[optional]font)
	Takes either 3 or 4 arguments.
	Allows you to create a quick popup message with an "ok" button.
	The size of the popup will be automaticly adjusted depending on the string.
	Returns the id of a windowid or frameid, depending on the value of argument 2(block background). 0-text: The text to be displayed withing the message.
	1-windowtext: the name of the window displayed in the left top.
	2-block background: bool whether to create a halp opaque gray pane preventing any mouseclicks in the background.
	3-font: optional. Set the font of argument 0(text).


	How to customize even further?
	The window exists out of the following objects:
	-obj_uiZ_window;
	-obj_uiZ_drawtextlines;
	-obj_uiZ_popupok;
	-obj_uiZ_square if block background is on.

	In the examples below, "r" refers to the returned item by uiz_popup_ok().
	The obj_uiZ_window object can always be accessed trough "r.window".
	The obj_uiZ_drawtextlines object can always be accessed trough "r.textlines".
	The obj_uiZ_popupok object can always be accessed trough "r.popup"
	The obj_uiZ_square can be accessed trough "r.square", but only if argument2 is true.
	The window can always be accessed trough "r.window"
	Look at the other articles on how these objects work, and how they can be customized.
	obj_uiZ_popupok acts as the ok button has the following customizabilities:
	-color: the image blend of the sprite used for the button;
	-sprite: the sprite used for the button (img 0=normal,1=mouseover,2=mousein)
	-spraddto: if you have a sprite with multiple buttons in it you can set this to "3" for example to make: (img 3=normal,4=mouseover,5=mousein);
	-text: The text on the button, not in the window;
	-textcolor: the color of the text in the button;


	Detecting when "ok" has been pressed
	this can be done using the following if statement in a step event:
	"if instance_exists(r) and r.indestroy=1 then{}" 

	*/
	if argument_count=4 then{draw_set_font(argument[3])}
	if argument[2]=1 then{
	var f=uiz_c(obj_uiZ_frame);
	f.posinframex=uiz_fill
	f.posinframey=uiz_fill
	//f.depth=-1000000
	uiz_depth_foreground(f);
	uiz_compatibility_popupfix(f)
	uiz_fixgeneralpos(f)
	var p=uiz_c(obj_uiZ_square);
	uiz_setParent(p,f)
	p.posinframex=uiz_fill
	p.posinframey=uiz_fill
	p.color=c_black
	p.image_alpha=0.3;
	//p.adddepth=1000000
	uiz_fixgeneralpos(p)
	}
	var dx=uiz_pxToDpi(string_width(string_hash_to_newline(argument[0])))
	var dy=uiz_pxToDpi(string_height(string_hash_to_newline(argument[0])))
	var w=uiz_window_create(dx+0.5,dp,dy+1,dp);
	if argument[2]=1 then{uiz_setParent(w,p)}
	w.addwindowmydepth=500000
	//w.adddepth+=100000
	//if argument[2]=1 then{
	//uiz_setParent(w,f)
	//}
	w.button_maximize=0;
	w.button_minimize=0;
	w.button_cross=0;
	w.contain=3
	w.windowtext=argument[1]
	uiz_window_setResizable(w,false);
	uiz_fixgeneralpos(w)
	var wf=w
	var t=uiz_c(obj_uiZ_text)
	uiz_setParent(t,wf)
	t.posinframex=uiz_fill
	t.posinframey=uiz_snaptop
	//t.posinframey=uiz_fill
	t.posvalhtype=dpmin
	t.posvalh=0.3
	//t.center=1
	t.halign=fa_center;
	t.valign=fa_center;
	uiz_text_setmultiline(t, true);
	uiz_text_settext(t, argument[0]);
	//t.text=argument[0]
	if argument_count=4 then{t.font=argument[3]}
	uiz_fixgeneralpos(t)
	var b=uiz_c(obj_uiZ_popupok)
	uiz_setParent(b,wf)
	b.posinframey=uiz_snapbottom
	b.posinframex=uiz_center
	b.posvalhtype=dp
	b.posvalh=0.3
	b.posvalwtype=dp
	b.posvalw=0.3
	b.window=w;
	if argument[2]=1 then{
	b.destroyframe=f
	}else{b.destroyframe=w}
	uiz_fixgeneralpos(b)
	if argument[2]=1 then{
	f.window=w;
	f.popup=b;
	f.textlines=t;
	f.square=p;
	w.popup=b;
	w.textlines=t;
	return f;
	}else{
	w.popup=b;
	w.textlines=t;
	return w;}



}
