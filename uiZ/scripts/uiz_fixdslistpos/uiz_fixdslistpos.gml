function uiz_fixdslistpos(argument0) {
	with(argument0){
		uiz_fix_Base();
		if uselist!=-1 then{
			updater_old=-1;
			updater_new=-1;
			if addy=0 then{uiz_drawscrollbar_setValue(scroll,0)}
			scrollwidth=uiz_getposx_self(scrollbarwidth,scrollbarwidthtype)+1;
			updatescroll=true;
			scrollheight=max(0,uiz_drawdslist_checkheight());
			if scrollheight>0 then{doscroll=true}else{doscroll=false;scrollwidth=0;}
			if uiz_drawscrollbar_getValue(scroll)>scrollheight then{
			uiz_drawscrollbar_setValue(scroll,scrollheight)
			}
			addy=-uiz_drawscrollbar_getValue(scroll)
			uiz_drawdslist_checkview();
		}
	}
	




}
