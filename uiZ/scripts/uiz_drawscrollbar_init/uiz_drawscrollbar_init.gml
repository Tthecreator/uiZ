/// @description uiz_drawscrollbar_init()
function uiz_drawscrollbar_init() {
	//returns an array structure used for drawing and manipulating scroll bars
	enum uiz_drawscrollbar_struct {
	    uiz_dsb_scroll,//main int value
	    uiz_dsb_scrollsel,//int signature
	    uiz_dsb_updated,//0.00X
	    uiz_dsb_mstate,//0.X
	    uiz_dsb_mstate_last,//0.0X
	    uiz_dsb_tween_scroll_from,
	    uiz_dsb_tween_scroll_to,
	    uiz_dsb_tween_scroll_factor,
	}
	var arr;
	for(var i=7;i>=0;--i){
	arr[i]=0;
	}
	arr[uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_mstate_last]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_mstate]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_updated]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_scrollsel]=0;
	arr[uiz_drawscrollbar_struct.uiz_dsb_scroll]=0;
	return arr;



}
