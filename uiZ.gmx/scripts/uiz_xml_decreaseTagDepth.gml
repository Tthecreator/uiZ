///uiz_xml_decreaseTagDepth(usexml, taghandle, levelsToDecrease)
//takes xml like this
//<test1>
//  <test2>
//      <taghandle></taghandle>
//      <test3></test3>
//  </test2>
//</test1>

//and transforms it to so:
//uiz_xml_decreaseTagDepth(usexml, taghandle, 1) would yield:
//<test1>
//  <test2></test2>
//  <taghandle>
//      <test3></test3>
//</taghandle>
//  
//</test1>
//and uiz_xml_decreaseTagDepth(usexml, taghandle, 2) would yield:
//<test1>
//  <test2></test2>
//</test1>
//<taghandle>
//  <test3></test3>
//</taghandle>
var levelsToDecrease = argument2;
if levelsToDecrease<=0 then{
    exit;
}
var m = obj_uiz_xmlparser;
var l = m.filelistl[| argument0];
var d = m.filelistd[| argument0];
var v = m.filelistv[| argument0];
var dontMoveEndTags = 0;
var tagPos = argument1;
var ownClosingTag = -1//position of the original endTag
var ownClosingTagData = -1//value of the original endTag
var originalTag = uiz_positify(l[| tagPos]);
var searchTag = originalTag>>3;


for(var i=tagPos;i<ds_list_size(l);++i){
    var p = uiz_positify(l[| i])
    var pos = p>>3
    var type = p mod 8;
    switch(type){
        case uiz_xml_headTag:
        case uiz_xml_headAttributeTag:
        //case uiz_xml_dataTagWithAttributes:
        //case uiz_xml_dataTag:
            ++dontMoveEndTags;
            //sdbm("headTag",dontMoveEndTags);
        break;
        case uiz_xml_closingTag:
            if(dontMoveEndTags>0){
                --dontMoveEndTags;
                if ownClosingTag !=-1 && dontMoveEndTags == 0 then{
                    ds_list_delete(l,ownClosingTag);//delete old tag
                    //l[| i]=ownClosingTagData;
                    ownClosingTag=i;
                    ds_list_insert(l,i,ownClosingTagData);
                }
                if(ownClosingTag == -1 && dontMoveEndTags == 0){//we've found our own closing tag because it's our tag
                ownClosingTag = i;
                ownClosingTagData = p;
                }
                
            }else{
                
                ds_list_delete(l,i);
                ds_list_insert(l,tagPos,p);
                
                ++tagPos;
                --levelsToDecrease;
                if(levelsToDecrease<=0){
                    //sdbm("Moved enough levels")
                    exit;//we've moved enough levels
                }
            }
        break;
        default:
        break;
    }
}



