function uiz_updater_FixViews_addsquare(argument0, argument1, argument2, argument3) {
	//sdbm("BEGINNING updating for 1", object_get_name(object_index), irandom(9), argument0, argument1, argument2, argument3)
	//if object_index = obj_uiZ_huesquare then {
	//    sdbm("HUE SQUARE");
	//}
	var l = obj_uiZ_controller.uiz_arealist
	var sz = ds_list_size(l);

	var drawstate = true;


	for(var i = 0; i < sz; i += 4) {
	    if argument1 <= l[| i + 1] and argument3 >= l[| i + 3] and argument2 >= l[| i + 2] and argument0 <= l[| i] then {//if our square encapsulates an already existing square

	        l[| i] = argument0;
	        l[| i + 1] = argument1;
	        l[| i + 2] = argument2;
	        l[| i + 3] = argument3;


	        drawstate = false;
	        break;

	    }
	    //check left and side
	    if argument1 >= l[| i + 1] and argument3 <= l[| i + 3] then {//our new square is smaller than the existing square, heightwise
	        if argument0 >= l[| i] and argument2 <= l[| i + 2] then {//our new square is smaller than the existing square, widthwise (and thus also heightwise)
	            drawstate = false;//don't record square
	            break;
	        }
	        if argument2 >= l[| i] and argument0 <= l[| i] and argument2 <= l[| i + 2] then {//our new square overlaps with an original square, but sticks out to the left.
	            //left
	            argument2 = l[| i] + 1;//cut off collusion with other square, by cutting of right part of the new square
	        } else if argument0 <= l[| i + 2] and argument2 >= l[| i + 2] and argument0 >= l[| i] then {
	                //right
	                argument0 = l[| i + 2] - 1;//cut off collusion with other square, by cutting of left part of the new square
	        }
	    } else {
	        if argument0 >= l[| i] and argument2 <= l[| i + 2] then {//our new square is smaller than the existing square, widthwise (but not heightwise)
	            if argument3 >= l[| i + 1] and argument1 <= l[| i + 1] and argument3 <= l[| i + 3] then {
	                //top
	                argument3 = l[| i + 1];
	            }
	            else {
	                if argument1 <= l[| i + 3] and argument3 >= l[| i + 3] and argument1 >= l[| i + 1] then {
	                    //bottom
	                    argument1 = l[| i + 3];
	                }
	            }
	        }
	    }
	    if(i >= obj_uiZ_controller.uiz_arealist_oldsz) {
	        i++; //add one if we are using the object containing listing
	    }
	}
	//*/
	if drawstate = true then {
	    ds_list_add(l, argument0, argument1, argument2, argument3)
	    return true;
	}

	return false;



}
