function uiz_textarea_rework_sel_upscale(argument0, argument1, argument2, argument3) {
	//sdbm("select upscale",argument0,argument1,argument2,argument3,selection1Line,selection1Char)
	if argument0+1=selection1Line then{
	    if selection1Char<=argument1 then{//we're copying the selection over to this line
	        ////sdbm("Add char");
	        selection1Char+=argument2;
	        selection1Line--;
	    }else{//the selection stays on the next line
	        selection1Char-=argument1;
	    }
	}else{
	    if argument3 and argument0<selection1Line then{//if a line is being deleted
	        selection1Line--;
	    }

	}


	//I'm so terribly sorry I had to copy this over, but this is because of GM. Yes I could have worked with arrays, but this is now spaghettic code anyways.

	if argument0+1=selection2Line then{
	    if selection2Char<=argument1 then{//we're copying the selection over to this line
	        selection2Char+=argument2;
	        selection2Line--;
	    }else{//the selection stays on the next line
	        selection2Char-=argument1;
	    }
	}else{
	    if argument3 and argument0<selection2Line then{//if a line is being deleted
	        selection2Line--;
	    }

	}




}
