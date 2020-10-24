/// @description INTERNAL UIZ FUNCTION DO NOT USE
function uiz_gridlist_getheight() {
	    if orientation = 0 then {
	        return ds_grid_height(maingrid);
	    } else {
	        return ds_grid_width(maingrid);
	    }



}
