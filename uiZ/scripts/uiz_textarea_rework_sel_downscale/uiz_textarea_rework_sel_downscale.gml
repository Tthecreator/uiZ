function uiz_textarea_rework_sel_downscale(argument0, argument1) {
	//i: argument0
	//e/lastSpace: argument1
	//sdbm("select downscale",argument0,argument1,selection1Line,selection1Char)
	if selection1Line>=argument0 then{
	    if selection1Line>argument0 or selection1Char>argument1 then{
	        if selection1Line=argument0 then{
	            selection1Char-=argument1;
	            addToNextLineCheck_sel1=false;
	        }
	        selection1Line++;
	    }
	}

	//I'm so terribly sorry I had to copy this over, but this is because of GM. Yes I could have worked with arrays, but this is now spaghettic code anyways.
	if selection2Line>=argument0 then{
	    if selection2Line>argument0 or selection2Char>argument1 then{
	        if selection2Line=argument0 then{
	            selection2Char-=argument1;
	            addToNextLineCheck_sel2=false;
	        }
	        selection2Line++;
	    }
	}







}
