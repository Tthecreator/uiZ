///uiz_xml_writetag_at(file,at,tagname,taginfo,[tagattributename,tagattributeinfo,......])
//write a tag using the following format:
//<tagname tagattributename="tagattributeinfo" ..etc..> taginfo </tagname>
//supplying tag attributes is optional

var h = argument[1]
if h > -1 and(argument_count mod 2) = 0 then {
    eh = uiz_xml_gethandleshortend(argument[0], h)
    var m = obj_uiz_xmlparser;
    var l = m.filelistl[| argument[0]];
    var d = m.filelistd[| argument[0]];
    var v = m.filelistv[| argument[0]];
    args = (argument_count - 5) / 2
    if args <= 0 then {
        uiz_list_addinsert(l, eh, (uiz_list_getadd(d, argument[2]) << 3) + uiz_xml_dataTag)
        var vsz = ds_list_size(v)
        ds_list_add(v, argument[3])
        uiz_list_addinsert(l, eh + 1, (vsz << 3) + 5)
    } else {
        uiz_list_addinsert(l, eh, (uiz_list_getadd(d, argument[2]) << 3) + uiz_xml_dataTagWithAttributes)

        for (var i = 1; i < (args * 2 + 1); i += 2) {
            uiz_list_addinsert(l, eh + i, (uiz_list_getadd(d, argument[i + 3]) << 3) + uiz_xml_attributeName)
            var vsz = ds_list_size(v)
            ds_list_add(v, argument[i + 4])
            uiz_list_addinsert(l, eh + i + 1, (vsz << 3) + uiz_xml_attributeData)

        }
        var vsz = ds_list_size(v)
        ds_list_add(v, argument[3])
        uiz_list_addinsert(l, eh + args * 2 + 2, (vsz << 3) + uiz_xml_attributeData)
    }
}

return 0;
