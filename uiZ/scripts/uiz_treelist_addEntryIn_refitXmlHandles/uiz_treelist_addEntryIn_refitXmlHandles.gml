function uiz_treelist_addEntryIn_refitXmlHandles(argument0) {
	//if (live_call(argument0)) return live_result;
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| usexml];
	var d=m.filelistd[| usexml];
	var v=m.filelistv[| usexml];
	var lsz = ds_list_size(handleList);
	var p;

	//sdbm("uiz_treelist_addEntryIn_refitXmlHandles",handleList[|argument0])
	//first decrease the xml handle of the listHandle, since it is placed inside and xml Endtag
	/*for(; xmlHandle>0; --xmlHandle){
	    if (l[| xmlHandle] mod 8)!=uiz_xml_closingTag then{
	        //++xmlHandle;
	        break;//we've found a valid xmlHandle position
	    }
	}*/
	var xmlHandle = handleList[|argument0]-1;
	handleList[|argument0] = xmlHandle;

	//get added tag size
	//sdbm("handleSize",usexml,xmlHandle)
	//sdbm(uiz_dslist_print(handleList));
	//sbm(uiz_xml_getdebugstringtotal(usexml))
	//repeat(5){sdbm("")}
	var tagType = uiz_xml_getTagType(usexml, xmlHandle);
	if tagType == uiz_xml_dataTag or tagType == uiz_xml_dataTagWithAttributes then{
	    var handleSize = uiz_xml_gethandleshortend(usexml,xmlHandle)-xmlHandle;
	}else{
	    var handleSize = uiz_xml_gethandleend(usexml,xmlHandle)-xmlHandle+1;
	}
	if handleSize<=0 then{
	    sdbm("[uiZ|ERROR] Tried to fix invalid XML Handles",uiz_xml_gethandleend(usexml,xmlHandle),xmlHandle);
	    show_error("Tried to fix invalid XML Handles",false);
	}
	//increase other handles with entry size
	for(var i=argument0+1;i<lsz;++i){
	    handleList[|i]+=handleSize;
	}



}
