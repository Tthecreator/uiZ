function uiz_fix_Base_endmargin() {
	gml_pragma("forceinline")
	end_topframemargin=ceil(topframemargin+bkmar*usebackgroundmargins);
	end_rightframemargin=ceil(rightframemargin+bkmar*usebackgroundmargins);
	end_bottomframemargin=ceil(bottomframemargin+bkmar*usebackgroundmargins);
	end_leftframemargin=ceil(leftframemargin+bkmar*usebackgroundmargins);



}
