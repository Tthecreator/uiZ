function uiz_treelist_switch_node_updateXML(argument0) {
	if updateXML and updateXMLBoxState then{
	    if (uiz_xml_settaginfo_at(usexml,handleList[|argument0],"boxState",string(indentEnabledAndBoxList[|argument0] mod 4))){
	        //we need to change up our xmlHandles, because new data was written
	        var lsz = ds_list_size(handleList);
	        for(var i=argument0+1;i<lsz;++i){
	            handleList[|i]+=2;//two pieces of data: dataName and dataInfo
	        }
	    }
	}



}
