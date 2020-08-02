///uiz_popup_yesno(text,windowtext,blockbackground,[optional]font)
//returns a windowid or a framid(if blockbackground)
//also sets a variable called uizreturnno and uizreturnyes returning the id's of the buttons
//the background is a half opaque black box, that prevents any mouseclicks in the background. blockbackground should equal 1 if you want this.
//you need uiz to be initialized for this. make sure uiz_init is called somewhere in your project.
//font is optional, but the font does need to be the same on create as on whatever the draw event leaves behind.
/*
uiz_popup_yesno(text,windowtext,blockbackground,[optional]font)
Takes either 3 or 4 arguments.
Allows you to create a quick popup message with a "yes" and a "no" button.
The size of the popup will be automaticly adjusted depending on the string.
Returns the id of a windowid or frameid, depending on the value of argument 2(block background). 0-text: The text to be displayed withing the message.
1-windowtext: the name of the window displayed in the left top.
2-block background: bool whether to create a halp opaque gray pane preventing any mouseclicks in the background.
3-font: optional. Set the font of argument 0(text).


How to customize even further?
The window exists out of the following objects:
-obj_uiZ_windowholder;
-obj_uiZ_drawtextlines;
-obj_uiZ_square if block background is on.
-two "obj_uiZ_3waybutton", one for "yes" and one for "no"

In the examples below, "r" refers to the returned item by uiz_popup_ok().
The obj_uiZ_windowholder object can always be accessed trough "r.window".
The obj_uiZ_drawtextlines object can always be accessed trough "r.textlines".
The obj_uiZ_square can be accessed trough "r.square", but only if argument2 is true.
The yes and no obj_uiz_3waybuttons can be accessed trough "r.nobutton" and "r.yesbutton".
The window can always be accessed trough "r.window"
Look at the other articles on how these objects work, and how they can be customized.
There is no obj_uiZ_popupok object for a yes/no window.


Detecting when "yes" or "no" has been pressed
this can be done using the following if statement in a step event:
"if instance_exists(r.yesbutton) and r.yesbutton.kmouseover=2 then{
//yes!
CODE A
}else{
if instance_exists(r.nobutton) and r.nobutton.kmouseover=2 then{
//no!
CODE A
}
}"

CODE A changes depending on whether you are using a background (if argument2=true). if argument2=true then this code is used:
uiz_destroyobject_animation(r,uiz_zero,uiz_zero,uiz_acceldecel,1)
uiz_destroyobject_animation_default(r.window)
else this code is used(argument2=false):
uiz_destroyobject_animation_default(r)


*/
if argument_count=4 then{draw_set_font(argument[3])}
if argument[2]=1 then{
var f=uiz_c(obj_uiZ_frame);
f.posinframex=uiz_fill
f.posinframey=uiz_fill
f.depth=-1000000
uiz_compatibility_popupfix(f)
uiz_fixgeneralpos(f)
var p=uiz_c(obj_uiZ_square);
uiz_setparent(p,f)
p.posinframex=uiz_fill
p.posinframey=uiz_fill
p.color=c_black
p.image_alpha=0.3;
//p.adddepth=1000000
uiz_fixgeneralpos(p)
//uiz_setopeninganimation(p,uiz_one,uiz_one,uiz_sin_inout,0.01)
uiz_setopeninganimation(p,uiz_one,uiz_one,uiz_straight,0.05,false)
}
var dx=uiz_todpix(string_width(argument[0]))
var dy=uiz_todpiy(string_height(argument[0]))
var w=uiz_window_create_animation(dx+0.5,dp,dy+1,dp,uiz_cubic_in,uiz_cubic_out,uiz_one,0.1);
w.addwindowmydepth=100000
/*
if argument[2]=1 then{
//uiz_setparent(w,f)
}else{
//w.adddepth+=500000
}
*/
if argument[2]=1 then{uiz_setparent(w,p)}
w.button_maximize=0;
w.button_minimize=0;
w.button_cross=0;
w.contain=3
w.windowtext=argument[1]
uiz_fixgeneralpos(w)
var wf=w
var t=instance_create(0,0,obj_uiZ_drawtextlines)
uiz_setparent(t,wf)
t.posinframex=uiz_fill
t.posinframey=uiz_snaptop
//t.posinframey=uiz_fill
t.posvalhtype=dpmin
t.posvalh=0.5
t.center=1
//t.posvalhtype=dp
//t.posvalh=1
t.text=argument[0]
if argument_count=4 then{t.font=argument[3]}
uiz_fixgeneralpos(t)
//no
var n=instance_create(0,0,obj_uiZ_3waybutton)
uiz_setparent(n,wf)
n.color=c_red
n.posinframey=uiz_snapbottom
n.posinframex=fc
n.posvalx=0.15
n.posvalhtype=dp
n.posvalh=0.3
n.posvalwtype=fc
n.posvalw=0.275
n.text="no"
n.bottomframemargin=4
uiz_fixgeneralpos(n)
//yes
var yes=instance_create(0,0,obj_uiZ_3waybutton)
uiz_setparent(yes,wf)
yes.color=c_green
yes.posinframey=uiz_snapbottom
yes.bottomframemargin=4
yes.posinframex=fc
yes.posvalx=0.575
yes.posvalhtype=dp
yes.posvalh=0.3
yes.posvalwtype=fc
yes.posvalw=0.275
yes.text="yes"
uiz_fixgeneralpos(yes)
uizreturnno=n
uizreturnyes=yes
uizreturnwindow=w

if argument[2]=1 then{
f.window=w;
//f.popup=b;
f.textlines=t;
f.square=p;
f.nobutton=n;
f.yesbutton=yes;
//w.popup=b;
w.textlines=t;
w.nobutton=n;
w.yesbutton=yes;
return f;
}else{
//w.popup=b;
w.textlines=t;
w.nobutton=n;
w.yesbutton=yes;
return w;}

