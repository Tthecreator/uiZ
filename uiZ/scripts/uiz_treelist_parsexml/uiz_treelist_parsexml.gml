/// @description uiz_treelist_parsexml(treelist)
/// @param treelist
function uiz_treelist_parsexml(argument0) {
	//reload the xml data into the list
	//the xml data to be used can be given using uiz_treelist_setxml

	//if (live_call(argument0)) return live_result;

	with(argument0){
	    ds_list_clear(indentEnabledAndBoxList);
	    ds_list_clear(handleList);
	    ds_list_clear(nextItemList);
	    ds_list_clear(spriteList);
	    ds_list_clear(textList);
	    ds_list_clear(hierarchyItemList);
	    maxHierarchyLevel = 0;
    
	    expandedLines = 1;
    
	    var spr = -1;
	    var name = "";
	    var img = 0;
	    var enabled = true;
	    var boxState = -1;
    
	    var level = -1;
	    var beginLevel = level;
	    var handle = uiz_xml_gethandle_begin(usexml);
	    var lastTagHandle = handle;
	    var isCollectingLineData=false;
	    var lastHeadTagType = -1;
    
	    var fillNextPosQueue = ds_stack_create()
    
	    //find next tag inside
    
	    var m=obj_uiz_xmlparser.id;
	    var l=m.filelistl[| usexml];
	    var d=m.filelistd[| usexml];
	    var v=m.filelistv[| usexml];
    
	    var lsz = ds_list_size(l);
	    while(handle<lsz){
	        var tagType = (l[|handle] mod 8)
	        switch(tagType){
	            case uiz_xml_headTag: case uiz_xml_headAttributeTag: case uiz_xml_dataTag: case uiz_xml_dataTagWithAttributes:
                
	                //save line data
	                if isCollectingLineData==true then{
	                    if boxState==-1 and lastHeadTagType==uiz_xml_headTag or lastHeadTagType==uiz_xml_headAttributeTag then{
	                        boxState = uiz_treelist_boxState_collapsed;
	                    }
	                    //since we've encountered a new tag, we can say all data from the previous tag is final, and we can save the previousely read tag.
	                    uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue)
	                    if lastHeadTagType==uiz_xml_dataTag or lastHeadTagType==uiz_xml_dataTagWithAttributes then{
	                        --level;
	                    }
	                }
                
	                //if tagType==uiz_xml_headTag or tagType==uiz_xml_headAttributeTag then{
	                    ++level;//go a level deeper  
	                //}
                
	                isCollectingLineData = true;
	                //reset values
	                spr = -1;
	                name = uiz_xml_gettag_name_at(usexml,handle);
	                img = 0;
	                enabled = true;
	                boxState = -1;
	                lastTagHandle = handle;
	                lastHeadTagType = tagType;
                
	            break;
	            case uiz_xml_attributeName:
	                //read name and data
	                var tagName = d[|(l[|handle] >> 3)];
	                ++handle;
	                var tagData = v[|(l[|handle] >> 3)];
	                switch(tagName){
	                    case "name":
	                        name = string(tagData);
	                        break;
	                    case "sprite":
	                        spr = real(tagData);            
	                        break;
	                    case "image":
	                        img = real(tagData);
	                        break;
	                    case "enabled":
	                        enabled = real(tagData);
	                        break;
	                    case "boxState":
	                        boxState = real(tagData);
	                        break;
	                }
	            break;
	            case uiz_xml_closingTag:
	                if isCollectingLineData==true then{
	                    //new headtag, write previous values
	                    uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue);
	                    if lastHeadTagType==uiz_xml_dataTag or lastHeadTagType==uiz_xml_dataTagWithAttributes then{
	                        --level;
	                    }
	                }
                
	                isCollectingLineData=false;
	                --level;
	            break;
	        }
	        ++handle;
	    }
	    if isCollectingLineData==true then{
	        //add any stuck/left lines
	        uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue);
	    }
	    if ds_list_size(textList)==0 then{
	        expandedLines = 0;
	    }else{
	        //set last item to point to nothing
	        nextItemList[|ds_list_size(textList)-1]=-1;
	    }
	    ds_stack_destroy(fillNextPosQueue);
	    uiz_treelist_generateHierarchyItemList();
	    expandedLines = uiz_treelist_getExpandedLines();
	}




}
