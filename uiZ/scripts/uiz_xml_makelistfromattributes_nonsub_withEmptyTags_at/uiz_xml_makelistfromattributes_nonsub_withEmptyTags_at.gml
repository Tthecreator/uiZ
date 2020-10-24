/// @description uiz_xml_makelistfromattributes_nonsub_withEmptyTags_at(file,at,attribute)
/// @param file
/// @param at
/// @param attribute
function uiz_xml_makelistfromattributes_nonsub_withEmptyTags_at(argument0, argument1, argument2) {
	//checks all the tags for a certain attribute, but will do in the given at tree position, not inside other tags. (but this will include tags if they have no children inside)
	//will return a ds list.
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var list=ds_list_create()
	var h=argument1;
	var seh=uiz_xml_gethandleshortend(argument0,h)
	var eh=uiz_xml_gethandleend(argument0,h)
	//get what to find
	fn=ds_list_find_index(d,argument2)
	//sdbm("a",seh,eh)
	var isin=false;
	var lastwastrue=false;
	var inlevel=0;
	var validHeadTag = false;
	var rememberHeadValue = "";
	var validRememberData = false;
	var lv,lt;
	for(var i=seh;i<eh;i++){
	    lv=round(uiz_positify(l[| i])>>3);
	    lt=uiz_positify(l[| i]) mod 8;
	    switch(lt){
	        case uiz_xml_headTag: case uiz_xml_headAttributeTag:
	            if inlevel==0 then{
	                validHeadTag = true;
	            }
	            ++inlevel;
	        break;
	        case uiz_xml_closingTag:
	            if validHeadTag and validRememberData then{
	                ds_list_add(list, rememberHeadValue);
	            }
	            validHeadTag = false;
	            validRememberData = false;
	            --inlevel;
	        break;
	        case uiz_xml_dataTag: case uiz_xml_dataTagWithAttributes:
	            validHeadTag = false;
	        break;
	        case uiz_xml_attributeName:
	            if lv = fn then{
	                ++i;
	                lv=round(uiz_positify(l[| i])>>3);
	                lt=uiz_positify(l[| i]) mod 8;
	                if lt==uiz_xml_attributeData then{
	                    if validHeadTag then{
	                        rememberHeadValue = v[| lv];
	                        validRememberData = true;
	                    }else{
	                        if inlevel==0 then{
	                            ds_list_add(list,v[| lv]);
	                        }
	                    }
	                }
	            }
	        break;
	        default:
	        break;
	    }
	    /*
	    if lt=uiz_xml_headTag or lt=uiz_xml_headAttributeTag then{
	        inlevel++;
	        if inlevel==1 then{validHeadTag = true;}else{validHeadTag = false;}
	    }
	    if lt=uiz_xml_closingTag then{
	        inlevel--;
	        if inlevel==0 and validHeadTag then{
	            ds_list_add(list,v[| lv]);
	        }
	    }
	    if lt=uiz_xml_dataTag or lt=uiz_xml_dataTagWithAttributes then{validHeadTag = false;}
	    if lt=uiz_xml_
	    if inlevel=0 then{
	        if !(lt=uiz_xml_dataTagWithAttributes or lt=uiz_xml_attributeName or lt=uiz_xml_attributeData) then{isin=false}
	        if lt=uiz_xml_dataTagWithAttributes then{
	            isin=true;
	        }
	        if lastwastrue=true then{
	            if lt=uiz_xml_attributeData then{
	                ds_list_add(list,v[| lv]);
	            }else{
	                lastwastrue=false
	            }
	        }
	        if isin=true and lt=uiz_xml_attributeName and lv=fn then{
	            lastwastrue=true
	        }else{
	            lastwastrue=false
	        }
	    }
	    */
	}
	return list;




}
