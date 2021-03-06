/// @description uiz_xml_writeDataTag_in(file,at,tagname,data,[tagattributename,tagattributeinfo,......])
/// @param file
/// @param at
/// @param tagname
/// @param data
/// @param [tagattributename
/// @param tagattributeinfo
/// @param ......]
function uiz_xml_writeDataTag_in() {
	//writes a tag inside the tag at the given taghandle (argument1 at)
	//supplying tag attributes is optional

	//example:
	//<test>
	//  <test2/>
	//</test>
	//can become this using uiz_xml_writeHeadTag_in(file,handle,"insertedTag","someData"):
	//<test>
	//  <test2/>
	//  <insertedTag>someData</insertedTag>
	//</test>
	var h = argument[1];
	if h > -1 and(argument_count mod 2) == 0 then {
	    eh = uiz_xml_gethandleend(argument[0], h)
	    var m = obj_uiz_xmlparser;
	    var l = m.filelistl[| argument[0]];
	    var d = m.filelistd[| argument[0]];
	    var v = m.filelistv[| argument[0]];
	    args = (argument_count - 4) / 2
	    tagNamePos = (uiz_list_getadd(d, argument[2]) << 3);
	    if args <= 0 then {//no attributeinfo given
	        uiz_list_addinsert(l, eh, tagNamePos + uiz_xml_dataTag)
	//        uiz_list_addinsert(l, eh + 1, tagNamePos + uiz_xml_closingTag);
	    } else {//atribute info given
	        uiz_list_addinsert(l, eh, tagNamePos + uiz_xml_dataTagWithAttributes)

	        for (var i = 1; i < (args * 2 + 1); i += 2) {
	            uiz_list_addinsert(l, eh + i, (uiz_list_getadd(d, argument[i + 3]) << 3) + uiz_xml_attributeName)
	            var vsz = ds_list_size(v)
	            ds_list_add(v, argument[i + 4])
	            uiz_list_addinsert(l, eh + i + 1, (vsz << 3) + uiz_xml_attributeData)
	        }
	        //uiz_list_addinsert(l, eh + i, tagNamePos + uiz_xml_closingTag);
	        ds_list_add(v, argument[3]);
	        uiz_list_addinsert(l, eh + i, ((ds_list_size(v)-1) << 3) + uiz_xml_attributeData);
	    }
	}

	return 0;



}
