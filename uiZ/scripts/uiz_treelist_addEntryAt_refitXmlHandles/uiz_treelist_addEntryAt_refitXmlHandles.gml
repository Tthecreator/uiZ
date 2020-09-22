/// @description uiz_treelist_addEntryAt_refitXmlHandles(startHandle,startHandleList,indentlevel)
/// @param startHandle
/// @param startHandleList
/// @param indentlevel
function uiz_treelist_addEntryAt_refitXmlHandles(argument0, argument1, argument2) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| usexml];
	var d=m.filelistd[| usexml];
	var v=m.filelistv[| usexml];
	var lsz = ds_list_size(l);
	var p;
	var xmlHandle = argument0;
	//count amount of added end tags before handle
	var addedEndTagSizes = 0;//the amount of end tags that have been added before the xmlHandle
	for(var i=xmlHandle;i<lsz;++i){
	    p = uiz_positify(l[| i]);
	    if (p mod 8)==uiz_xml_closingTag{
	        ++addedEndTagSizes;
	    }else{
	        break;
	    }
	}

	//check for headtag or attributeHeadTag
	var beginTagSize = 0;
	//p = uiz_positify(l[| i]);//reuse last p from loop
	switch(p mod 8){
	    case uiz_xml_headTag:
	        beginTagSize = 1;
	    break;
	    case uiz_xml_headAttributeTag:
	        beginTagSize = 1;
	        //find out how much data this tag has
	        for(var i=i+1;i<lsz;++i){
	            p = uiz_positify(l[| i])
	            ptype = p mod 8;
	            if(ptype==uiz_xml_attributeName || ptype==uiz_xml_attributeData){
	                ++beginTagSize;
	            }else{
	                break;
	            }
	        }
	    break;
	    default:
	        sdbm("[uiZ|ERROR]Unable to figure out how treelist "+string(id)+" relates to it's underlying xml",ptype);
	        show_error("[uiZ|ERROR]Unable to figure out how treelist "+string(id)+" relates to it's underlying xml",false);
	}
	//add calculated offsets to xml handles
	var hsz = ds_list_size(handleList);
	handleList[|argument1]+=addedEndTagSizes;//tag that has changed only needs this offset
	var lowestLevel = argument2;
	//add offsets before endtag
	for(var i=argument1+1;i<hsz;++i){
	    if (indentEnabledAndBoxList[|i]>>3)<=lowestLevel then{
	        break;//endtag passed, we need to add an extra offset.
	    }
	    handleList[|i]+=addedEndTagSizes+beginTagSize;    
	}
	//add offsets after endtag
	for(var i=i+0;i<hsz;++i){
	    handleList[|i]+=addedEndTagSizes+beginTagSize+1;    
	}



}
