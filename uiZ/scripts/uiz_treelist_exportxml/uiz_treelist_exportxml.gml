/// @description uiz_treelist_exportxml(treelist,xml)
/// @param treelist
/// @param xml
function uiz_treelist_exportxml(argument0, argument1) {
	//removes any data in the given xml file (loaded in the xml parser) and replaces it with the data in the treelist
	//to create a new file use xmlFile = uiz_xml_createfile.
	//after using this function on the new file, you can use uiz_xml_savefile or uiz_xml_toString to output the xml.
	//if live_call(argument0,argument1) return live_result;

	with(argument0){
	    var xml = argument1;
	    uiz_xml_empty(xml);//clear any data in the file
    
	    //loop over treelist
	    var lsz = ds_list_size(textList);
	    //sdbm("lsz",lsz)
	    //uiz_xml_writeHeadTag_at
	    //var stack = ds_stack_create();
	    var lastLevel=-1;
	    //var addIn = uiz_xml_gethandle_begin(xml);
	    for(var i=0;i<lsz;++i){
	        var name = uiz_treelist_item_get_name(argument0, i);
	        var sprite = uiz_treelist_item_get_sprite(argument0, i);
	        var image = uiz_treelist_item_get_spriteImg(argument0, i);
	        var enabled = uiz_treelist_item_get_enabled(argument0, i);
	        var boxState = uiz_treelist_item_get_boxState(argument0, i);
	        var level = uiz_treelist_item_get_indentLevel(argument0, i);
	        var xmlHandle = uiz_xml_gethandle_end(xml)-level;//place the new tag at the end of the file, but backtrack all the endtags at the end (there are as many endtags on the end as the current item has indenLevels)
	        uiz_xml_writeHeadTag_before(xml,xmlHandle,string_replace(name," ","_"),"name",name,"sprite",string(sprite),"image",string(image),"enabled",string(enabled),"boxState",string(boxState));
	    }
	}



}
