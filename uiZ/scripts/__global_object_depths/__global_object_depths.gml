function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_sort_example
	global.__objectDepths[1] = 0; // obj_uiz_basictutorial
	global.__objectDepths[2] = 0; // obj_uiZ_serverbrowser
	global.__objectDepths[3] = 0; // obj_uiZ_template
	global.__objectDepths[4] = 0; // obj_uiZ_template_background
	global.__objectDepths[5] = 0; // obj_uiZ_template_scrollbar
	global.__objectDepths[6] = 0; // obj_uiZ_template_0
	global.__objectDepths[7] = 0; // obj_uiZ_template_1
	global.__objectDepths[8] = 0; // obj_uiZ_animationtest
	global.__objectDepths[9] = 0; // obj_uiZ_colorboxes
	global.__objectDepths[10] = 0; // obj_uiZ_controller
	global.__objectDepths[11] = 0; // obj_uiZ_debugmanager
	global.__objectDepths[12] = 0; // obj_uiZ_framecolanchor
	global.__objectDepths[13] = 0; // obj_uiZ_framerowanchor
	global.__objectDepths[14] = 0; // obj_uiz_xmlparser
	global.__objectDepths[15] = 0; // obj_uiZ_frameset
	global.__objectDepths[16] = 0; // obj_uiZ_menuholder
	global.__objectDepths[17] = 0; // obj_uiZ_menuitem
	global.__objectDepths[18] = 0; // obj_uiZ_mouseband
	global.__objectDepths[19] = 0; // obj_uiZ_grid
	global.__objectDepths[20] = 0; // obj_uiZ_popupok
	global.__objectDepths[21] = 0; // obj_uiZ_resizer
	global.__objectDepths[22] = 0; // obj_uiZ_surfacecanvas
	global.__objectDepths[23] = 0; // obj_uiZ_text_background
	global.__objectDepths[24] = 0; // obj_uiZ_drawtextlines
	global.__objectDepths[25] = 0; // obj_uiZ_drawtext
	global.__objectDepths[26] = 0; // obj_uiZ_sprbutton
	global.__objectDepths[27] = 0; // obj_uiZ_textplane
	global.__objectDepths[28] = 0; // obj_uiZ_surfaceholder
	global.__objectDepths[29] = 0; // obj_uiZ_3waybutton
	global.__objectDepths[30] = 0; // obj_uiZ_button
	global.__objectDepths[31] = 0; // obj_uiZ_canvas
	global.__objectDepths[32] = 0; // obj_uiZ_checkbox
	global.__objectDepths[33] = 0; // obj_uiZ_clock
	global.__objectDepths[34] = 0; // obj_uiZ_colorbox
	global.__objectDepths[35] = 0; // obj_uiZ_cover
	global.__objectDepths[36] = 0; // obj_uiZ_drawdslist
	global.__objectDepths[37] = 0; // obj_uiZ_dropdown
	global.__objectDepths[38] = 0; // obj_uiZ_easybutton
	global.__objectDepths[39] = 0; // obj_uiZ_frame
	global.__objectDepths[40] = 0; // obj_uiZ_framescrollbar
	global.__objectDepths[41] = 0; // obj_uiZ_functionbar
	global.__objectDepths[42] = 0; // obj_uiZ_gradientroundrect
	global.__objectDepths[43] = 0; // obj_uiZ_gradientsquare
	global.__objectDepths[44] = 0; // obj_uiZ_gridlist
	global.__objectDepths[45] = 0; // obj_uiZ_huesquare
	global.__objectDepths[46] = 0; // obj_uiZ_loadingbar
	global.__objectDepths[47] = 0; // obj_uiZ_loadingcircle
	global.__objectDepths[48] = 0; // obj_uiZ_menubutton
	global.__objectDepths[49] = 0; // obj_uiZ_mousemenu
	global.__objectDepths[50] = 0; // obj_uiZ_radiobox
	global.__objectDepths[51] = 0; // obj_uiZ_rotator
	global.__objectDepths[52] = 0; // obj_uiZ_scrollbar
	global.__objectDepths[53] = 0; // obj_uiZ_slickslider
	global.__objectDepths[54] = 0; // obj_uiZ_slideframe
	global.__objectDepths[55] = 0; // obj_uiZ_slider
	global.__objectDepths[56] = 0; // obj_uiZ_slider_2col
	global.__objectDepths[57] = 0; // obj_uiZ_sliderstruct
	global.__objectDepths[58] = 0; // obj_uiZ_sprite
	global.__objectDepths[59] = 0; // obj_uiZ_spriteanimationbutton
	global.__objectDepths[60] = 0; // obj_uiZ_spritecounter
	global.__objectDepths[61] = 0; // obj_uiZ_square
	global.__objectDepths[62] = 0; // obj_uiZ_squarebutton
	global.__objectDepths[63] = 0; // obj_uiZ_stringbox
	global.__objectDepths[64] = 0; // obj_uiZ_swipicon
	global.__objectDepths[65] = 0; // obj_uiZ_switch
	global.__objectDepths[66] = 0; // obj_uiZ_tabs
	global.__objectDepths[67] = 0; // obj_uiZ_tabslider
	global.__objectDepths[68] = 0; // obj_uiZ_text
	global.__objectDepths[69] = 0; // obj_uiZ_textarea
	global.__objectDepths[70] = 0; // obj_uiZ_treelist
	global.__objectDepths[71] = 0; // obj_uiZ_window


	global.__objectNames[0] = "obj_sort_example";
	global.__objectNames[1] = "obj_uiz_basictutorial";
	global.__objectNames[2] = "obj_uiZ_serverbrowser";
	global.__objectNames[3] = "obj_uiZ_template";
	global.__objectNames[4] = "obj_uiZ_template_background";
	global.__objectNames[5] = "obj_uiZ_template_scrollbar";
	global.__objectNames[6] = "obj_uiZ_template_0";
	global.__objectNames[7] = "obj_uiZ_template_1";
	global.__objectNames[8] = "obj_uiZ_animationtest";
	global.__objectNames[9] = "obj_uiZ_colorboxes";
	global.__objectNames[10] = "obj_uiZ_controller";
	global.__objectNames[11] = "obj_uiZ_debugmanager";
	global.__objectNames[12] = "obj_uiZ_framecolanchor";
	global.__objectNames[13] = "obj_uiZ_framerowanchor";
	global.__objectNames[14] = "obj_uiz_xmlparser";
	global.__objectNames[15] = "obj_uiZ_frameset";
	global.__objectNames[16] = "obj_uiZ_menuholder";
	global.__objectNames[17] = "obj_uiZ_menuitem";
	global.__objectNames[18] = "obj_uiZ_mouseband";
	global.__objectNames[19] = "obj_uiZ_grid";
	global.__objectNames[20] = "obj_uiZ_popupok";
	global.__objectNames[21] = "obj_uiZ_resizer";
	global.__objectNames[22] = "obj_uiZ_surfacecanvas";
	global.__objectNames[23] = "obj_uiZ_text_background";
	global.__objectNames[24] = "obj_uiZ_drawtextlines";
	global.__objectNames[25] = "obj_uiZ_drawtext";
	global.__objectNames[26] = "obj_uiZ_sprbutton";
	global.__objectNames[27] = "obj_uiZ_textplane";
	global.__objectNames[28] = "obj_uiZ_surfaceholder";
	global.__objectNames[29] = "obj_uiZ_3waybutton";
	global.__objectNames[30] = "obj_uiZ_button";
	global.__objectNames[31] = "obj_uiZ_canvas";
	global.__objectNames[32] = "obj_uiZ_checkbox";
	global.__objectNames[33] = "obj_uiZ_clock";
	global.__objectNames[34] = "obj_uiZ_colorbox";
	global.__objectNames[35] = "obj_uiZ_cover";
	global.__objectNames[36] = "obj_uiZ_drawdslist";
	global.__objectNames[37] = "obj_uiZ_dropdown";
	global.__objectNames[38] = "obj_uiZ_easybutton";
	global.__objectNames[39] = "obj_uiZ_frame";
	global.__objectNames[40] = "obj_uiZ_framescrollbar";
	global.__objectNames[41] = "obj_uiZ_functionbar";
	global.__objectNames[42] = "obj_uiZ_gradientroundrect";
	global.__objectNames[43] = "obj_uiZ_gradientsquare";
	global.__objectNames[44] = "obj_uiZ_gridlist";
	global.__objectNames[45] = "obj_uiZ_huesquare";
	global.__objectNames[46] = "obj_uiZ_loadingbar";
	global.__objectNames[47] = "obj_uiZ_loadingcircle";
	global.__objectNames[48] = "obj_uiZ_menubutton";
	global.__objectNames[49] = "obj_uiZ_mousemenu";
	global.__objectNames[50] = "obj_uiZ_radiobox";
	global.__objectNames[51] = "obj_uiZ_rotator";
	global.__objectNames[52] = "obj_uiZ_scrollbar";
	global.__objectNames[53] = "obj_uiZ_slickslider";
	global.__objectNames[54] = "obj_uiZ_slideframe";
	global.__objectNames[55] = "obj_uiZ_slider";
	global.__objectNames[56] = "obj_uiZ_slider_2col";
	global.__objectNames[57] = "obj_uiZ_sliderstruct";
	global.__objectNames[58] = "obj_uiZ_sprite";
	global.__objectNames[59] = "obj_uiZ_spriteanimationbutton";
	global.__objectNames[60] = "obj_uiZ_spritecounter";
	global.__objectNames[61] = "obj_uiZ_square";
	global.__objectNames[62] = "obj_uiZ_squarebutton";
	global.__objectNames[63] = "obj_uiZ_stringbox";
	global.__objectNames[64] = "obj_uiZ_swipicon";
	global.__objectNames[65] = "obj_uiZ_switch";
	global.__objectNames[66] = "obj_uiZ_tabs";
	global.__objectNames[67] = "obj_uiZ_tabslider";
	global.__objectNames[68] = "obj_uiZ_text";
	global.__objectNames[69] = "obj_uiZ_textarea";
	global.__objectNames[70] = "obj_uiZ_treelist";
	global.__objectNames[71] = "obj_uiZ_window";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
