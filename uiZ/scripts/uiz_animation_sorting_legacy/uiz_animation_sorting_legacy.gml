function uiz_animation_sorting_legacy(argument0, argument1) {
	//scr_sort_drawvalues(argument0,argument1)
	//don't call this script, use uiz_animation_sortpoints.
	var p;
	var put,pivot;//in some cases you might want to watch these variables vor debug puposes
	//check and sort very small groups left
	var a=uiz_animationto;
	switch(argument1-argument0){
	case 0: 
	return 0; break;
	case 1: 
	if a.uiz_apoint[aid,argument0]>a.uiz_apoint[aid,argument1] then{
	p=a.uiz_apoint[aid,argument1];
	a.uiz_apoint[aid,argument1]=a.uiz_apoint[aid,argument0];
	a.uiz_apoint[aid,argument0]=p;
	p=a.uiz_apointval[aid,argument1];
	a.uiz_apointval[aid,argument1]=a.uiz_apointval[aid,argument0];
	a.uiz_apointval[aid,argument0]=p;
	p=a.uiz_apointtype[aid,argument1];
	a.uiz_apointtype[aid,argument1]=a.uiz_apointtype[aid,argument0];
	a.uiz_apointtype[aid,argument0]=p;
	}
	return 0;
	break;
	case 2:
	if a.uiz_apoint[aid,argument0]>a.uiz_apoint[aid,argument1-1] then{
	p=a.uiz_apoint[aid,argument1-1];
	a.uiz_apoint[aid,argument1-1]=a.uiz_apoint[aid,argument0];
	a.uiz_apoint[aid,argument0]=p;
	p=a.uiz_apointval[aid,argument1-1];
	a.uiz_apointval[aid,argument1-1]=a.uiz_apointval[aid,argument0];
	a.uiz_apointval[aid,argument0]=p;
	p=a.uiz_apointtype[aid,argument1-1];
	a.uiz_apointtype[aid,argument1-1]=a.uiz_apointtype[aid,argument0];
	a.uiz_apointtype[aid,argument0]=p;
	//scr_sort_drawswap(argument0,argument1-1)
	}
	if a.uiz_apoint[aid,argument0+1]>a.uiz_apoint[aid,argument1] then{
	p=a.uiz_apoint[aid,argument1];
	a.uiz_apoint[aid,argument1]=a.uiz_apoint[aid,argument0+1];
	a.uiz_apoint[aid,argument0+1]=p;
	p=a.uiz_apointval[aid,argument1];
	a.uiz_apointval[aid,argument1]=a.uiz_apointval[aid,argument0+1];
	a.uiz_apointval[aid,argument0+1]=p;
	p=a.uiz_apointtype[aid,argument1];
	a.uiz_apointtype[aid,argument1]=a.uiz_apointtype[aid,argument0+1];
	a.uiz_apointtype[aid,argument0+1]=p;
	}
	if a.uiz_apoint[aid,argument0]>a.uiz_apoint[aid,argument1-1] then{
	p=a.uiz_apoint[aid,argument1-1];
	a.uiz_apoint[aid,argument1-1]=a.uiz_apoint[aid,argument0];
	a.uiz_apoint[aid,argument0]=p;
	p=a.uiz_apointval[aid,argument1-1];
	a.uiz_apointval[aid,argument1-1]=a.uiz_apointval[aid,argument0];
	a.uiz_apointval[aid,argument0]=p;
	p=a.uiz_apointtype[aid,argument1-1];
	a.uiz_apointtype[aid,argument1-1]=a.uiz_apointtype[aid,argument0];
	a.uiz_apointtype[aid,argument0]=p;
	}
	return 0;
	break;
	}
	pivot=a.uiz_apoint[aid,argument1]
	put=argument0
	for(var i=argument0;i<=argument1;i++){
	if a.uiz_apoint[aid,i]<=pivot then{
	p=a.uiz_apoint[aid,i];
	a.uiz_apoint[aid,i]=a.uiz_apoint[aid,put];
	a.uiz_apoint[aid,put]=p;
	p=a.uiz_apointval[aid,i];
	a.uiz_apointval[aid,i]=a.uiz_apointval[aid,put];
	a.uiz_apointval[aid,put]=p;
	p=a.uiz_apointtype[aid,i];
	a.uiz_apointtype[aid,i]=a.uiz_apointtype[aid,put];
	a.uiz_apointtype[aid,put]=p;
	put++
	}
	}


	if argument0<put-1 then{
	uiz_animation_sorting_legacy(argument0,put-2)
	}
	if put<argument1 then{
	uiz_animation_sorting_legacy(put,argument1)

	}



}
