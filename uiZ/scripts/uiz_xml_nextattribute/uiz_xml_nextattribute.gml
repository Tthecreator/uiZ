/// @description uiz_xml_nextattribute(file,handle)
/// @param file
/// @param handle
function uiz_xml_nextattribute(argument0, argument1) {
	//takes a handle and moves it to the next attribute
	//returns -1 if no handle was found
	//doesn't parse attributes beyond the end of a tag, if it finds anything but an attribute, it will return -1.

	var m = obj_uiz_xmlparser.id;
	var l = m.filelistl[| argument0];
	var d = m.filelistd[| argument0];
	var v = m.filelistv[| argument0];

	var handle = argument1;
	var lsz = ds_list_size(l);
	//check if the attribute name is on the next row
	++handle;
	if(handle>=lsz){
	    return -1;
	}
	var tagType = (l[|handle] mod 8);
	//if there is data here we need to move another bit
	if tagType == uiz_xml_attributeData then{
	    ++handle;
	    if(handle>=lsz){
	        return -1;
	    }
	    tagType = (l[|handle] mod 8);
	}
	if tagType == uiz_xml_attributeName then{
	    return handle;
	}else{
	    return -1;
	}




}
