function UIZ_FONT() {
	//you can change me.
	//dp_15 means a font with a height of 0.15 dp = 0.15 inch = 3,81 mm;
	//px_10 means a font that is 10 pixels high;
	if global.uiz_fonts_loaded=false then{
	    global.uiz_fonts_loaded=true
	    var multiplier=0.5;//this multiplier suits the m+ 2p font.
	    sizes[7]=70;fonts[7]=uiz_fnt_70;
	    sizes[6]=50;fonts[6]=uiz_fnt_50;
	    sizes[5]=25;fonts[5]=uiz_fnt_25;
	    sizes[4]=20;fonts[4]=uiz_fnt_20;
	    sizes[3]=10;fonts[3]=uiz_fnt_10;
	    sizes[2]=8;fonts[2]=uiz_fnt_8;
	    sizes[1]=5;fonts[1]=uiz_fnt_5;
	    sizes[0]=2;fonts[0]=uiz_fnt_2;   
	    //load dpi
	    globalvar uiz_dp;
	    uiz_dp=uiz_dpi_getdpi();
    
	    //recalculate font sizes based on actual pixel size
	    for(var i=0;i<array_length_1d(fonts);++i){
	        draw_set_font(fonts[i]);
	        sizes[i] = string_height(string_hash_to_newline("{|}IJGlg"));
	    }
    
	    //load dp based fonts
	    globalvar uiz_fnt_dp_15, uiz_fnt_dp_20, uiz_fnt_dp_30, uiz_fnt_dp_50;
	//    uiz_fnt_dp_15 = uiz_font_load_dp(0.15,multiplier);
	    uiz_fnt_dp_20 = uiz_font_load_dp(0.20,multiplier);
	//    uiz_fnt_dp_30 = uiz_font_load_dp(0.30,multiplier);
	//    uiz_fnt_dp_50 = uiz_font_load_dp(0.50,multiplier);
    
	    //set pixel based fonts
	    globalvar uiz_fnt_px_2, uiz_fnt_px_5, uiz_fnt_px_8, uiz_fnt_px_10, uiz_fnt_px_20, uiz_fnt_px_50, uiz_fnt_px_70; //use of px fonts is discouraged, since it won't scale properly between 1080p and 4k screens. Using pixel values to build your ui is discouraged in general.
	    uiz_fnt_px_2=uiz_fnt_2;
	    uiz_fnt_px_5=uiz_fnt_5;
	    uiz_fnt_px_8=uiz_fnt_8;
	    uiz_fnt_px_10=uiz_fnt_10;
	    uiz_fnt_px_20=uiz_fnt_20;
	    uiz_fnt_px_50=uiz_fnt_50;
	    uiz_fnt_px_70=uiz_fnt_70;
    
	    draw_set_font(uiz_fnt_dp_20);
	}




}
