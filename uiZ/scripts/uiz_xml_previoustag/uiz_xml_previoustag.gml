/// @description uiz_xml_nexttag(file,handle)
/// @param file
/// @param handle
function uiz_xml_previoustag(argument0, argument1) {
	//takes a handle and moves it to the next full tag
	//ignores attributes and closing tags
	//returns -1 if no handle was found
	var m=obj_uiz_xmlparser.id;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];

	var handle = argument1;
	var lsz = ds_list_size(l);
	while(true){
	    --handle;
	    if(handle>=lsz || handle<0){
	        return -1;
	    }
	    var tagType = (l[|handle] mod 8);
	    if tagType==uiz_xml_headTag or tagType==uiz_xml_headAttributeTag then{
	        return handle;
	    }
	}



}
