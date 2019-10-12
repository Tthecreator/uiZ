///uiz_xml_writeHeadTag_at(file,at,tagname,[tagattributename,tagattributeinfo,......])
//writes a tag after the given tag at the given taghandle (argument1 at)
//write a tag using the following format:
//<tagname tagattributename="tagattributeinfo" ..etc../>
//which is equal to: (at least for this parser)
//<tagname tagattributename="tagattributeinfo" ..etc..></tagname>
//meaning other tags can be put inside a tag created using this function.
//supplying tag attributes is optional
var h = argument[1]
if h > -1 and(argument_count mod 2) = 1 then {
    eh = uiz_xml_gethandleshortend(argument[0], h)
    var m = obj_uiz_xmlparser;
    var l = m.filelistl[| argument[0]];
    var d = m.filelistd[| argument[0]];
    var v = m.filelistv[| argument[0]];
    args = (argument_count - 4) / 2
    tagNamePos = (uiz_list_getadd(d, argument[2]) << 3);
    if args <= 0 then {//no attributeinfo given
        uiz_list_addinsert(l, eh, tagNamePos + uiz_xml_headTag)
        uiz_list_addinsert(l, eh + 1, tagNamePos + uiz_xml_closingTag);
    } else {//atribute info given
        uiz_list_addinsert(l, eh, tagNamePos + uiz_xml_headAttributeTag)

        for (var i = 1; i < (args * 2 + 1); i += 2) {
            uiz_list_addinsert(l, eh + i, (uiz_list_getadd(d, argument[i + 2]) << 3) + uiz_xml_attributeName)
            var vsz = ds_list_size(v)
            ds_list_add(v, argument[i + 3])
            uiz_list_addinsert(l, eh + i + 1, (vsz << 3) + uiz_xml_attributeData)
        }
        uiz_list_addinsert(l, eh + i, tagNamePos + uiz_xml_closingTag);
    }
}

return 0;
