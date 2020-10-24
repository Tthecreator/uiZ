/// @description takes a ds list and puts it in the form of: { 1st, 2nd, 3rd pos}
function uiz_ds_list_print(argument0) {
	var str="{"
	for(var i=0;i<ds_list_size(argument0);i++){
	    if i>0 then{
	        str+=", "
	    }
	    str+=string(argument0[|i]);
	}

	return str+"}"



}
