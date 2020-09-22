/// @description uiz_font_load_dp(dp_size,multiplier)
/// @param dp_size
/// @param multiplier
function uiz_font_load_dp(argument0, argument1) {
	//var sz=0.15*uiz_dp*multiplier
	var sz=argument0*uiz_dp
	var diff=999999999999;
	var hasdiff=-1;
	//get pixel font that matches this dpi the most
	for(var i=0;i<array_length_1d(sizes);i++){
	    var curdiff=abs(sz-sizes[i]);
	    if curdiff<diff then{diff=curdiff;hasdiff=i;}
	}
	var fnt=fonts[hasdiff];

	//check if font matches enough
	if hasdiff>-1 and diff<15 and is_real(fnt) and font_exists(fnt) then{
	    sdbm("[uiZ|Info]Now using font: ",fnt," of size: ",sizes[hasdiff]," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the system unaware dpi is: ",display_get_dpi_y());
	    //uiz_fnt_dp_15=fnt;
	    return fnt;
	}else{
	    var fnt = UIZ_FONT_IMPORT(argument0,argument1)
	    draw_set_font(fnt);
	    sdbm("[uiZ|Info]Now using font: ",fnt," of size: ",string_height(string_hash_to_newline("|gjlp"))," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the system unaware dpi is: ",display_get_dpi_y());
	    return fnt;
	}



}
