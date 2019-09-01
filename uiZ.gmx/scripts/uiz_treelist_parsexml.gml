///uiz_treelist_parsexml(treelist)
//reload the xml data into the list
//the xml data to be used can be given using uiz_treelist_setxml
with(argument0){
    ds_list_clear(indentEnabledAndBoxList);
    ds_list_clear(spriteList);
    ds_list_clear(textList);
    
    var spr = -1;
    var name = "";
    var img = 0;
    var enabled = true;
    var boxState = -1;
    
    var level = -1;
    var beginLevel = level;
    var handle = uiz_xml_gethandle_begin(usexml);
    var isCollectingLineData=false;
    
    //find next tag inside
    
    var m=obj_uiz_xmlparser.id;
    var l=m.filelistl[| usexml];
    var d=m.filelistd[| usexml];
    var v=m.filelistv[| usexml];
    
    var lsz = ds_list_size(l);
    while(handle<lsz){
        var tagType = (l[|handle] mod 8)
        switch(tagType){
            case uiz_xml_headTag: case uiz_xml_headAttributeTag:
            
                //save line data
                if isCollectingLineData==true then{
                    if boxState==-1 then{
                        boxState = uiz_treelist_boxState_collapsed;
                    }
                    //new headtag, write previous values
                    var sprl = (spr<<7)+(img);
                    ds_list_add(spriteList,sprl);
                    ds_list_add(textList,name);
                    ds_list_add(handleList,handle);
                    ds_list_add(indentEnabledAndBoxList,(level<<3)+(enabled<<2)+(boxState));
                }
                isCollectingLineData = true;
                
                //reset values
                spr = -1;
                name = uiz_xml_gettag_name_at(usexml,handle);
                img = 0;
                enabled = true;
                boxState = -1;
                
                ++level;//go a level deeper
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
                if boxState = -1 then{
                    boxState = uiz_treelist_boxState_noBox;
                }
                if isCollectingLineData==true then{
                    //new headtag, write previous values
                    var sprl = (spr<<7)+(img);
                    ds_list_add(spriteList,sprl);
                    ds_list_add(textList,name);
                    ds_list_add(handleList,handle);
                    ds_list_add(indentEnabledAndBoxList,(level<<3)+(enabled<<2)+(boxState));
                }
                
                isCollectingLineData=false;
                --level;
            break;
        }
        ++handle;
    }
    if isCollectingLineData==true then{
        //add any stuck/left lines
        if boxState = -1 then{
            boxState = uiz_treelist_boxState_noBox;
        }
        ds_list_add(spriteList,(spr<<7)+(img));
        ds_list_add(textList,name);
        ds_list_add(handleList,handle);
        ds_list_add(indentEnabledAndBoxList,(level<<3)+(enabled<<2)+(boxState));
    }
}
