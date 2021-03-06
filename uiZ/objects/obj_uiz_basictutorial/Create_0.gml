/// @description Example 1:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square = uiz_c(obj_uiZ_square)


/* */
///Example 2:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square = uiz_c(obj_uiZ_square)
//fix our square object.
uiz_fix(square)

/* */
///Example 3:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square = uiz_c(obj_uiZ_square)
//setup some variables
uiz_position(square, 100,px, 200,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 4:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square = uiz_c(obj_uiZ_square)
//setup some variables
uiz_position(square, 100,px, 200,px);
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 5:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
//setup some variables
square.posinframex=px;
square.posinframey=px;
square.posvalx=100;
square.posvaly=200;
square.posvalwtype=px;
square.posvalhtype=px;
square.posvalw=50;
square.posvalh=50;
//fix our square object.
uiz_fixgeneralpos(square)


/* */
///Example 6:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,gradient)
//setup some variables
uiz_position(square, 25,px, 25,px);
uiz_size(square, 40,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 7:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
//setup some variables
uiz_position(square, 2,dp, 1,dp);
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 8:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, .3,dp, .6,dp);
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 9:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,gradient)
//setup some variables
uiz_position(square, .3,dp, .6,dp);
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 10:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, 0,uiz_snapleft, .6,fc);//It doesn't matter what the value of argument1 is.
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 11:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, 0,uiz_snapleft, 0,uiz_snapright);//It doesn't matter what the value of argument1 or argument3 is.
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 12:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, 0,uiz_center, 0,uiz_center);//It doesn't matter what the value of argument1 or argument3 is.
uiz_size(square, 50,px, 50,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 13:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, 0,uiz_center, 0,uiz_fill);//It doesn't matter what the value of argument1 or argument3 is.
uiz_size_w(square, 50,px);//We don't need the normal uiz_size function, as the height and heightType arguments don't work anymore.
//fix our square object.
uiz_fix(square)


/* */
///Example 14:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, .3,fc, .6,fc);
uiz_size(square, .3,fc, .1,fc);
//fix our square object.
uiz_fix(square)


/* */
///Example 15:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
uiz_position(square, .3,fc, .6,fc);
uiz_size(square, .3,fc, .1,fc);
uiz_setPoint(square, uiz_right, uiz_middle);
//fix our square object.
uiz_fix(square)



/* */
///Example 16:
/*
//create event of a newly created object.
//initialize uiz
uiz_init()
//create our gradientsquare object
canvas=uiz_c(obj_uiZ_canvas)
//our parent is the uiz controller object.
//setup some variables
uiz_position(canvas, 50,px, 50,px);
uiz_size(canvas, 200,px, 200,px);
//fix our canvas object.
uiz_fix(canvas)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,canvas)
//setup some variables
uiz_position(square, 25,px, 25,px);
uiz_size(square, 40,px, 50,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 17:
/*
//initialize uiz
uiz_init()
//create and fix window
window=uiz_window_create(2,dp,2,dp)
uiz_fixgeneralpos(window);
//create button
button=uiz_c(obj_uiZ_button)
//put button in window's mainframe
uiz_setParent(button,window)
//position and size button
uiz_position(button, 50,px, 50,px);
uiz_size(button, 200,px, 50,px);
//fix button
uiz_fix(button)

/* */
///Example 18:
/*
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
uiz_alpha(gradient, 1, 0.5);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,gradient)
//setup some variables
uiz_position(square, .3,fc, .6,fc);
uiz_size(square, 40,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 19:
/*
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
uiz_alpha(gradient, 0.5, 1);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,gradient)
//setup some variables
uiz_position(square, .3,fc, .6,fc);
uiz_size(square, 40,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 20:
/*
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
uiz_alpha(gradient, 0.5, 0.5);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//set the parent
uiz_setParent(square,gradient)
//setup some variables
uiz_position(square, .3,fc, .6,fc);
uiz_size(square, 40,px, 50,px);
//fix our square object.
uiz_fix(square)


/* */
///Example 21:
/*
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//our parent is the uiz controller object.
//setup some variables
uiz_position(square, 100,px, 150,px);
uiz_size(square, 200,px, 120,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 22:
/*
//initialize uiz
uiz_init()
//create our gradientsquare object
gradient=uiz_c(obj_uiZ_gradientsquare)
//our parent is the uiz controller object.
//setup some variables
uiz_position(gradient, 50,px, 50,px);
uiz_size(gradient, 200,px, 200,px);
//fix our square object.
uiz_fix(gradient)

//create our square object
square=uiz_c(obj_uiZ_square)
//our parent is the uiz controller object.
//setup some variables
uiz_depth_set(square, 5);
uiz_position(square, 100,px, 150,px);
uiz_size(square, 200,px, 120,px);
//fix our square object.
uiz_fix(square)

/* */
///Example 23:
/*
//initialize uiz
uiz_init()
//create our square object
square=uiz_c(obj_uiZ_square)
//setup some variables
uiz_position(square, 0,uiz_center, 0,uiz_center);
uiz_size(square, 3,dp, 3,dp);
uiz_square_setcolor(square, c_green);
uiz_square_setoutline(square, true, c_orange, 1);
//fix our square object.
uiz_fix(square)


/* */
///Example 24:
/*
//initialize uiz
uiz_init()
//create our rot1 object
rot1=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot1, 0,uiz_snapleft, 0,uiz_center);
uiz_size(rot1, 1,dp, 1,dp);
//fix our rot1 object.
uiz_fix(rot1);

//create our rot2 object
rot2=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot2, 0,uiz_snapright, 0,uiz_center);
uiz_size(rot2, 1,dp, 1,dp);
//fix our rot2 object.
uiz_fix(rot2);


/* */
///Example 25:
/*
//initialize uiz
uiz_init()
//create our rot1 object
rot1=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot1, 0,uiz_snapleft, 0,uiz_center);
uiz_size(rot1, 1,dp, 1,dp);
uiz_rotator_setanimation(rot1, uiz_straight, 5);//set the time to move a full circle to 5.
//fix our rot1 object.
uiz_fix(rot1);

//create our rot2 object
rot2=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot2, 0,uiz_snapright, 0,uiz_center);
uiz_size(rot2, 1,dp, 1,dp);
uiz_rotator_setanimation(rot2, uiz_straight, 5);//set the time to move a full circle to 5.
//fix our rot2 object.
uiz_fix(rot2);

/* */
///Example 26:
/*
//initialize uiz
uiz_init()
//create our rot1 object
rot1=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot1, 0,uiz_snapleft, 0,uiz_center);
uiz_size(rot1, 1,dp, 1,dp);
uiz_rotator_setanimation(rot1, uiz_straight, 5);//set the time to move a full circle to 5.
//fix our rot1 object.
uiz_fix(rot1);

//create our rot2 object
rot2=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot2, 0,uiz_snapright, 0,uiz_center);
uiz_size(rot2, 1,dp, 1,dp);
uiz_rotator_setanimation(rot2, uiz_quadratic_in, 5);//set the time to move a full circle to 5 using the animation uiz_quadratic_in.
//fix our rot2 object.
uiz_fix(rot2);

/* */
///Example 27:
/*
//initialize uiz
uiz_init()
//create our rot1 object
rot1=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot1, 0,uiz_snapleft, 0,uiz_center);
uiz_size(rot1, 1,dp, 1,dp);
uiz_rotator_setanimation(rot1, uiz_straight, 5);//set the time to move a full circle to 5.
//fix our rot1 object.
uiz_fix(rot1);

//create our rot2 object
rot2=uiz_c(obj_uiZ_rotator)
//setup some variables
uiz_position(rot2, 0,uiz_snapright, 0,uiz_center);
uiz_size(rot2, 1,dp, 1,dp);
uiz_rotator_setanimation(rot2, uiz_quadratic_inout, 5);//set the time to move a full circle to 5 using the animation uiz_quadratic_in.
//fix our rot2 object.
uiz_fix(rot2);


/* */
///Example 28:
/*
//initialize uiz
uiz_init()
//create our stringbox object
stringbox=uiz_c(obj_uiZ_stringbox)
//setup some variables
uiz_position(stringbox, 25,px, 0,uiz_center);
uiz_size(stringbox, 1,dp, 1,dp);
//fix our stringbox object.
uiz_fix(stringbox)

//create our checkbox object
checkbox=uiz_c(obj_uiZ_checkbox)
//setup some variables
uiz_position(checkbox, 375,px, 0,uiz_center);
uiz_size(checkbox, 1,dp, 1,dp);
uiz_setPoint_x(checkbox, uiz_right);
//fix our checkbox object.
uiz_fix(checkbox)

/* */
///Example 29:
/*
//initialize uiz
uiz_init()
//create our stringbox object
stringbox=uiz_c(obj_uiZ_stringbox)
//setup some variables
uiz_position(stringbox, 25,px, 0,uiz_center);
uiz_size(stringbox, 1,dp, 1,dp);
//fix our stringbox object.
uiz_fix(stringbox)

//create our checkbox object
checkbox=uiz_c(obj_uiZ_checkbox)
//setup some variables
uiz_position(checkbox, 375,px, 0,uiz_center);
uiz_size(checkbox, 1,dp, 1,dp);
uiz_setPoint_x(checkbox, uiz_right);
uiz_background_texturescript(checkbox, uiz_back_square);
uiz_background_normal(checkbox, 0, c_white, 0);//we need to call this function in order to set the margin to 0.
//fix our checkbox object.
uiz_fix(checkbox)


/* */
///Example 30:
/*
//initialize uiz
uiz_init()
//create our stringbox object
stringbox=uiz_c(obj_uiZ_stringbox)
//setup some variables
uiz_position(stringbox, 25,px, 0,uiz_center);
uiz_size(stringbox, 1,dp, 1,dp);
//fix our stringbox object.
uiz_fix(stringbox)

//create our checkbox object
checkbox=uiz_c(obj_uiZ_checkbox)
//setup some variables
uiz_position(checkbox, 375,px, 0,uiz_center);
uiz_size(checkbox, 1,dp, 1,dp);
uiz_setPoint_x(checkbox, uiz_right);
uiz_background_texturescript(checkbox, uiz_back_square);
uiz_background_normal(checkbox, 0, c_white, 0);//we need to call this function in order to set the margin to 0.
uiz_background_over(checkbox, -1, c_blue, -1);
uiz_background_in(checkbox, -1, c_red, -1);
//fix our checkbox object.
uiz_fix(checkbox)

/* */
///Example 31:
/*
//initialize uiz
uiz_init()
//create our grid
grid=uiz_grid_create(5,5)
uiz_setGridObjects_object(grid, obj_uiZ_gradientsquare);
uiz_fix(grid)

/* */
///Example 32:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,5);
uiz_setGridObjects_object(grid, obj_uiZ_gradientsquare);
uiz_gridSize_col(grid,2,100,px);
uiz_fix(grid);

/* */
///Example 33:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,3);
uiz_setGridObjects_object(grid, obj_uiZ_gradientsquare);
uiz_gridSize_row(grid,0,50,px)
uiz_gridSize_row(grid,1,0.33,fc)
uiz_gridSize_row(grid,2,1,xtra)
uiz_fix(grid);


/* */
///Example 34:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,4);
uiz_setGridObjects_object(grid, obj_uiZ_gradientsquare);
uiz_gridSize_row(grid,0,50,px)
uiz_gridSize_row(grid,1,0.33,fc)
uiz_gridSize_row(grid,2,1,xtra)
uiz_gridSize_row(grid,3,1,xtra)
uiz_fix(grid);


/* */
///Example 35:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,4);
uiz_setGridObjects_object(grid, obj_uiZ_gradientsquare);
uiz_gridSize_row(grid,0,50,px)
uiz_gridSize_row(grid,1,0.33,fc)
uiz_gridSize_row(grid,2,1,xtra)
uiz_gridSize_row(grid,3,2,xtra)
uiz_fix(grid);


/* */
///Example 36a:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,4);
uiz_setGridObjects_script(grid, scr_basictutorial_example_36a_gridObjectCreator);//note that we DONT put () after scr_basictutorial_example_36a_gridObjectCreator.
uiz_gridSize_row(grid,0,50,px)
uiz_gridSize_row(grid,1,0.33,fc)
uiz_gridSize_row(grid,2,1,xtra)
uiz_gridSize_row(grid,3,2,xtra)
uiz_fix(grid);


/* */
///Example 36b:
/*
//initialize uiz
uiz_init();
//create our grid
grid=uiz_grid_create(5,4);
uiz_setGridObjects_canvas(grid);
uiz_gridSize_row(grid,0,50,px)
uiz_gridSize_row(grid,1,0.33,fc)
uiz_gridSize_row(grid,2,1,xtra)
uiz_gridSize_row(grid,3,2,xtra)
uiz_fix(grid);

//get a canvas from the grid
canvas = uiz_gridObject(grid, 2, 2)//do not change anything about this canvas
//add object to grid
rot = uiz_c(obj_uiZ_rotator)
//put the rot inside a canvas that we got from inside a grid
uiz_setParent(rot,canvas)
//make the objet fill the canvas, and therefore fill the cell in the grid
uiz_position(rot, 0,uiz_fill, 0,uiz_fill);
//fix the object
uiz_fix(rot);

/* */
///Example 37:
/*
//init uiz
uiz_init()
//create frameset
frset = uiz_frameset_create()
//divide horizontally
div1 = uiz_frameset_divide_objects_horizontal(frset, 1,dp,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare);
//divide vertically
//div2 = uiz_frameset_divide_objects_vertical(mainpart, 0.1,fc,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare);
uiz_fix(frset)

/* */
///Example 38:
/*
//init uiz
uiz_init()
//create frameset
frset = uiz_frameset_create()
//divide horizontally
div1 = uiz_frameset_divide_objects_horizontal(frset, 1,dp,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare);
//divide vertically
bottomFrame = uiz_frameset_getObject(div1, 1);//get the second (bottom) frame of the first division we made
div2 = uiz_frameset_divide_objects_vertical(bottomFrame, 0.1,fc,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare);
uiz_fix(frset)
//get all frames for later reference:
leftFrame = uiz_frameset_getObject(div2, 0);
mainFrame = uiz_frameset_getObject(div2, 1);
topBar = uiz_frameset_getObject(div1, 0);

/* */
///Example 39:
/*
//init uiz
uiz_init()
//create frameset
frset = uiz_frameset_create()
//divide horizontally
div1 = uiz_frameset_divide_objects_horizontal(frset, 1,dp,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare, 50,px,obj_uiZ_button);
//divide vertically
bottomFrame = uiz_frameset_getObject(div1, 1);//get the second (bottom) frame of the first division we made
div2 = uiz_frameset_divide_objects_vertical(bottomFrame, 0.1,fc,obj_uiZ_gradientsquare, 1,xtra,obj_uiZ_gradientsquare, 3,xtra,obj_uiZ_rotator, 30,px,obj_uiZ_gradientsquare,);
uiz_fix(frset)

/* */
///Example 40a:
/*
//initializing uiz
uiz_init()
//creating window
window=uiz_window_create_animation(3,dp,3,dp,uiz_anticipate_in,uiz_anticipate_out,uiz_one,1)
//fixing window
uiz_fix(window)

/* */
///Example 40b:
/*
//initializing uiz
uiz_init()
//creating window
window=uiz_window_create_animation(3,dp,3,dp,uiz_anticipate_in,uiz_anticipate_out,uiz_one,1)
//fixing window
uiz_fix(window)

//add gradient
gradient = uiz_c(obj_uiZ_gradientsquare);
uiz_setParent(gradient, window);//put the gradientsquare inside the window
uiz_position_t(gradient, uiz_fill, uiz_fill);//fill the window with the gradient
uiz_fix(gradient);

/* */
///Example 40c:
/*
//initializing uiz
uiz_init();
//creating window
window=uiz_window_create_animation(3,dp,3,dp,uiz_anticipate_in,uiz_anticipate_out,uiz_one,1);
//customize window
uiz_background_normal(window, spr_uiZ_border1, c_red, 10);
uiz_background_topbar_normal(window, spr_uiZ_border1, c_green, 10);
//fixing window
uiz_fix(window);

/* */
///Example 41:
/*
//init uiz
uiz_init()
//create popup window
window=uiz_popup_ok("This is a test popup","A window!",true)
//no fixing or anything else is needed

/* */
///Example 42:
/*
//init uiz
uiz_init()
//create popup window
window=uiz_popup_yesno("Do you like uiz?","Important question!",false)
//no fixing or anything else is needed

/* */
///Example 43:
/*
//init uiz
uiz_init()
//create popup window
window=uiz_popup_string("what is your name?","Something...",true,"david")
//no fixing or anything else is needed

/* */
///Example 44:
/*
//init uiz
uiz_init()
//create a frame
frame = uiz_c(obj_uiZ_frame);
//set values
uiz_position_t(frame, uiz_center, uiz_center);
uiz_size(frame, 1,dp, 0.5, dp);
//fix our frame
uiz_fix(frame)

/* */
///Example 45:
/*
//init uiz
uiz_init()
//create a frame
frame=uiz_c(obj_uiZ_frame);
//set values
uiz_position_t(frame, uiz_center, uiz_center);
uiz_size(frame, 1,dp, 0.5, dp);
//fix our frame
uiz_fix(frame)
//create gradientsquare
grad=uiz_c(obj_uiZ_gradientsquare)
//put it in our frame
uiz_setParent(grad,frame)
//make it fill our frame
uiz_position_t(grad, uiz_fill, uiz_top);
uiz_size_h(grad, 2,dp);
//fix our grad
uiz_fix(grad)

/* */
///Example 46:
//*
//init uiz
uiz_init()
//create a frame
frame=uiz_c(obj_uiZ_frame);
//set values
uiz_position_t(frame, uiz_center, uiz_center);
uiz_size(frame, 1,dp, 3, dp);
uiz_frame_setscrollable(frame, false, true);
//fix our frame
uiz_fix(frame)
//create gradientsquare
grad=uiz_c(obj_uiZ_gradientsquare)
//put it in our frame
uiz_setParent(grad,frame)
//make it fill our frame
uiz_position_t(grad, uiz_fill, uiz_top);
uiz_size_h(grad, 8,dp);
//fix our grad
uiz_fix(grad)
//fix our frame
uiz_fix(frame)

/* */
/*  */
