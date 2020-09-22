function scr_sorting_depth_bak(argument0, argument1, argument2) {
	//scr_sorting_list(argument1,argument2)
	var p;
	var put,pivot;//in some cases you might want to watch these variables vor debug puposes
	//check and sort very small groups left
	switch(argument2-argument1){
	case 0: 
	//scr_sort_drawvalue(argument1)
	return 0; break;
	case 1: 
	if argument0[|argument1].depth<argument0[|argument2].depth then{
	p=argument0[|argument2];
	argument0[|argument2]=argument0[|argument1];
	argument0[|argument1]=p;
	p=argument0[|argument2].listpos;
	argument0[|argument2].listpos=argument0[|argument1].listpos;
	argument0[|argument1].listpos=p;
	}
	//scr_sort_drawvalues(argument1,argument2)
	return 0;
	break;
	case 2:
	if argument0[|argument1].depth<argument0[|argument2-1].depth then{
	p=argument0[|argument2-1];
	argument0[|argument2-1]=argument0[|argument1];
	argument0[|argument1]=p;
	p=argument0[|argument2-1].listpos;
	argument0[|argument2-1].listpos=argument0[|argument1].listpos;
	argument0[|argument1].listpos=p;
	//scr_sort_drawswap(argument1,argument2-1)
	}
	if argument0[|argument1+1].depth<argument0[|argument2].depth then{
	p=argument0[|argument2];
	argument0[|argument2]=argument0[|argument1+1];
	argument0[|argument1+1]=p;
	p=argument0[|argument2].listpos;
	argument0[|argument2].listpos=argument0[|argument1+1].listpos;
	argument0[|argument1+1].listpos=p;
	//scr_sort_drawswap(argument1+1,argument2)
	}
	if argument0[|argument1].depth<argument0[|argument2-1].depth then{
	p=argument0[|argument2-1];
	argument0[|argument2-1]=argument0[|argument1];
	argument0[|argument1]=p;
	p=argument0[|argument2-1].listpos;
	argument0[|argument2-1].listpos=argument0[|argument1].listpos;
	argument0[|argument1].listpos=p;
	//scr_sort_drawswap(argument1,argument2-1)
	}
	//scr_sort_drawvalues(argument1,argument2)
	return 0;
	break;
	}
	pivot=argument0[|argument2].depth
	put=argument1
	for(var i=argument1;i<=argument2;i++){
	if argument0[|i].depth>=pivot then{
	p=argument0[|i];
	argument0[|i]=argument0[|put];
	argument0[|put]=p;
	p=argument0[|i].listpos;
	argument0[|i].listpos=argument0[|put].listpos;
	argument0[|put].listpos=p;
	//scr_sort_drawswap(argument2,put)
	put++
	}
	}


	if argument1<put-1 then{
	scr_sorting_depths(argument0,argument1,put-2)
	}
	if put<argument2 then{
	scr_sorting_depths(argument0,put,argument2)

	}







}
