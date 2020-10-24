/// @description uiz_xml_nexttag_inside(file,handle)
/// @param file
/// @param handle
function uiz_xml_nexttag_inside(argument0, argument1) {
	//takes a handle and moves it to the next full tag, inside the given tag
	//if the given tag doesn't contain any structure -1 is returned 
	//can only be used from the handle of a tag to find the next sub-tag. Not to find the next sub-tag from another sub-tag.
	//ignores attributes
	//returns -1 if no handle was found
	var m=obj_uiz_xmlparser.id;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];

	var handle = argument1;
	var lsz = ds_list_size(l);
	while(true){
	    ++handle;
	    if(handle==lsz){
	        return -1;
	    }
	    var tagType = (l[|handle] mod 8)
	    if tagType==uiz_xml_headTag or tagType==uiz_xml_headAttributeTag then{
	        return handle;
	    }
	    if tagType==uiz_xml_closingTag then{
	        return -1;
	    }
	}



}
