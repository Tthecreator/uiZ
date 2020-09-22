/// @description create base of template
//init uiz
uiz_init()
//setup frameset
frameset=uiz_frameset_create()
//uiz_setParent(frameset,frame_test)
anchor_1=uiz_frameset_divide_horizontal(frameset,0.5,dp,1,xtra)
//get the top bar (the first frame, so array index 0)
frame_topbar=anchor_1.frameat[0]
//make the topbar draw a color
frame_topbar.markcolor=uiz_html2color($3f51b5)//indigo color
frame_topbar.mark=true//make it markable
//get the bottom part to put our ui in (the second frame, so array index 1)
frame_main=anchor_1.frameat[1]
//fix frameset
uiz_fixgeneralpos(frameset)

//create the slidable frame
frame_sidebar=uiz_c(obj_uiZ_slideframe)
//put it side the main frame
uiz_setParent(frame_sidebar,frame_main)
//put in front
uiz_depth_set(frame_sidebar,-1000);
//fill in height
frame_sidebar.posinframex=uiz_snapleft
//put it on the left side of the screen, but outside the screen.
frame_sidebar.posinframey=uiz_fill
//make the sidebar a size
frame_sidebar.posvalw=2.5
frame_sidebar.posvalwtype=dp
//make the sidebar a color
frame_sidebar.markcolor=c_white
frame_sidebar.mark=true//make it markable

uiz_fixgeneralpos(frame_sidebar)

//add button
menubutton=uiz_c(obj_uiZ_spriteanimationbutton)
uiz_setParent(menubutton,frame_topbar)
menubutton.posinframex=uiz_snapleft;
//make the width the same as the height
menubutton.posvalw=1;
menubutton.posvalwtype=fcy;
menubutton.posinframey=uiz_fill;
uiz_fixgeneralpos(menubutton)
frame_sidebar.menubutton=menubutton

//add a cover to gray out the mainframe when the menu is open
menucover=uiz_c(obj_uiZ_cover)
uiz_setParent(menucover,frame_main)
menucover.posinframex=uiz_fill;
menucover.posinframey=uiz_fill;
menucover.destroyonclick=false;
uiz_setEnabled(menucover,false);
uiz_fixgeneralpos(menucover)
frame_sidebar.blackframe=menucover

test = uiz_c(obj_uiZ_square)
uiz_setParent(test,frame_main)
test.posinframex=uiz_center;
test.posinframey=uiz_center;
test.posvalw = 200;
test.posvalwtype = px;
test.posvalh = 200;
test.posvalhtype = px;
uiz_fixgeneralpos(test);

//fill the sidebar up with a random object and show how scrollbars can be enabled
square = uiz_c(obj_uiZ_gradientsquare)
uiz_setParent(square,frame_sidebar)
uiz_position(square,1,uiz_snapleft,10,px);
uiz_size(square,300,px,3000,px);

frame_sidebar.scrolly=true;
frame_sidebar.scrollx=true;
//explicitly enable a scrollbar for windows devices.
//setting this to false will still allow scrolling using the scrollwheel or dragging.
//set this to !global.systemsupportstouch to enable the scrollbars on the right platform.
uiz_frame_setscrollbar(frame_sidebar,!global.systemsupportstouch,!global.systemsupportstouch)

//fix these items to apply their new positions.
uiz_fixgeneralpos(frame_sidebar);
uiz_fixgeneralpos(square);




