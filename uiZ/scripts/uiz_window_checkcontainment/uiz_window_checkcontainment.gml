/// @description INTERAL UIZ SCRIPT DO NOT USE
function uiz_window_checkcontainment() {
	switch (contain) {
	        case uiz_window_contain_corner:
	            //var py = uiz_getposy(barsize, barsizevaltype);
	            x = max(-width + bars * 4 + end_rightframemargin, x)
	            y = max(0, y)
	            x = min(parent.width - (bars + end_rightframemargin), x)
	            y = min(parent.height - end_topframemargin, y)
	            break;
	        case uiz_window_contain_topbar:
	            //var py = uiz_getposy(barsize, barsizevaltype);
	            x = max(0, x)
	            y = max(0, y)
	            x = min(parent.width - width, x)
	            y = min(parent.height - end_topframemargin, y)
	            break;
	        case uiz_window_contain_window:
	            x = max(0, x)
	            y = max(0, y)
	            x = min(parent.width - width, x)
	            y = min(parent.height - height, y)
	            break;
	    }



}
