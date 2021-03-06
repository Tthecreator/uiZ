/// @description INTERNAL UIZ FUNCTION DO NOT USE
function uiz_gridlist_drawTopbar(argument0, argument1, argument2, argument3) {
	var wat=argument0;
	var nwat=argument1;
	var h=argument2;
	var i=argument3;
	//draw top bar segment from (wat,ry) to (nwat,h)
	uiz_back_at_topbar(wat, ry, nwat+1, h)

	//draw divider
	    if drawdivider = true and i>0 then {
	        //draw_set_color(dividercolor);
			draw_square(nwat, ry-1, nwat+1, h-1, dividercolor, alpha);
			draw_square(wat, ry-1, wat+1, h-1, dividercolor, alpha);
	        //draw_line(nwat, ry-1, nwat, h-1)
	        //draw_line(wat, ry-1, wat, h-1)
	    }

	//draw text inside back at (wat+textmargin,ry+(h-ry)/2)
	    if is_string(mainlist[| i]) or !sprite_exists(real(mainlist[| i])) then {
	        //draw text variant
	            draw_set_halign(fa_left);
	            draw_set_valign(fa_middle);
	            draw_set_color(textcolor)
	            draw_text(wat + textmargin, ry + (h - ry) / 2, string_hash_to_newline(mainlist[| i]))
	    } else {
	        //draw sprite variant
	            var spr = real(mainlist[| i]);
	            var his = h - ry;
	            var scy = his / sprite_get_height(spr) * imagescale
	            var wis = nwat - wat;
	            var scx = min(scy, wis / sprite_get_width(spr)) * imagescale
	            var vrx = scx * sprite_get_width(spr);
	            draw_sprite_ext(spr, 0, wat + wis / 2 - (vrx / 2 - sprite_get_xoffset(spr) * scx), ry + his / 2 - (his / 2 - sprite_get_yoffset(spr) * scy), scx, scy, 0, c_white, alpha)
	    }



}
