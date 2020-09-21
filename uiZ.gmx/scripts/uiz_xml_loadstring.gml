///uiz_xml_loadstring(string xml)
var foundtags, len, tagtext, pos, line, fileline, startpos, endpos, cha, i, tagtext, len, tagname, tagattributes, e, removedline, found, estart, emid, pos, o, ech;

//with(obj_uiz_xmlparser){

//var f=file_text_open_read(argument0);
var l = ds_list_create() //the main list
var d = ds_list_create() //the stucture data list
var v = ds_list_create() //the variable data list
var m = obj_uiz_xmlparser;
m.filelistl[| m.files] = l;
m.filelistd[| m.files] = d;
m.filelistv[| m.files] = v;
m.files++;
//line=file_text_readln(f);
line = argument0
while (string_char_at(line, 1) = " ") {
    line = string_copy(line, 2, string_length(line) - 1)
}

//find tags
var startpos = 0;
var endpos = 0;
for (var i = 1; i <= string_length(line); i++) {
    cha = string_char_at(line, i)
    switch (cha) {
        case "<":
            startpos = i
            break;
        case ">":
            //sdbm("found >",i)
            if startpos > 0 then {
                len = string_length(line)
                tagtext = "";
                //find the text between <>
                tagtext = string_copy(line, startpos + 1, i - startpos - 1)
                len = string_length(line)
                var ktca = string_char_at(tagtext, string_length(tagtext))
                if ktca = "/"
                or ktca = "\" then{
                tagname = uiz_removeChar(tagtext, string_length(tagtext));
            } else {
                tagname = tagtext;
            }
            tagattributes = ""
            //pull apart tagname and attributes
            for (var e = 1; e <= i; e++) {
                if string_char_at(tagtext, e) = " "
                then {
                    tagname = string_copy(tagtext, 1, e - 1)
                    tagattributes = string_copy(tagtext, e + 1, string_length(tagtext) - e)
                    break;
                }
            }
            
            /*
            //look back to find text between tags <tag>text</tag>:
            removedline = "";
            for(var e = startpos - 1; e>=1; --e){
                if (e == 1 or string_char_at(line,e)==">"){
                    removedline = string_copy(line, 1, startpos - 1)
                }
            }
            */
            removedline = string_copy(line, endpos+1, startpos - endpos - 1);
            
            if string_char_at(tagname, 1) = "/" then{
                //is endtag
                tagname = string_copy(tagname, 2, string_length(tagname) - 1)
                if !ds_list_empty(l) then {
                    pos = uiz_list_getadd(d, tagname)
                    //detect objecttag
                    var found = 0
                    for (var e = ds_list_size(l) - 1; e >= 0; e--) {
                        var p = (l[| e] mod 8)
                        if p != uiz_xml_attributeName and p != uiz_xml_attributeData then {
                            //transfer headtag to objecttag
                            if p < 2 and round(l[| e] >> 3) = pos then {
                                l[| e] += 2
                                found = 1
                            }
                            break;
                        }
                    }
                    if found = 0 then {
                        //normal endtag
                        //E
                        ds_list_add(l, (pos << 3) + uiz_xml_closingTag)
                    } else {
                        //find and add text between object tags
                        //I
                        ds_list_add(v, removedline)
                        ds_list_add(l, ((ds_list_size(v) - 1) << 3) + uiz_xml_attributeData)
                    }
                }
            } else {//is not an endtag
                pos = uiz_list_getadd(d, tagname)
                if !(string_copy(tagname, 1, 3) = "!--")
                then{//not a comment
                    var addtoend = -1;
                    if string_char_at(tagtext, string_length(tagtext)) = "/"
                    then {
                        addtoend = (pos << 3) + uiz_xml_closingTag;//remember closing tag
                    }

                    if tagattributes = ""
                    then {
                        //H
                        ds_list_add(l, (pos << 3) + uiz_xml_headTag )//add head tag
                    } else {
                        //K
                        ds_list_add(l, (pos << 3) + uiz_xml_headAttributeTag)//add head tag with attributes
                        //dismantel tagattributes
                        var estart = 1
                        var emid = 0
                        for (var e = 1; e <= string_length(tagattributes); e++) {
                            ech = string_char_at(tagattributes, e)
                            switch (ech) {
                                case "=":
                                    emid = e
                                    break;
                                case '"':
                                //case "'":
                                    if emid != e - 1 then {
                                        //get attribute
                                        var attributename = string_copy(tagattributes, estart, emid - estart)
                                        var attributedata = string_copy(tagattributes, emid + 2, e - emid - 2)
                                        //N
                                        pos = uiz_list_getadd(d, attributename)
                                        ds_list_add(l, (pos << 3) + uiz_xml_attributeName)//add attribute name
                                        //I
                                        ds_list_add(v, attributedata)//save attribute data
                                        ds_list_add(l, ((ds_list_size(v) - 1) << 3) + uiz_xml_attributeData)//add attribute data to main list
                                        estart = e + 1
                                        for (var o = e + 1; o <= string_length(tagattributes); o++) {
                                            if string_char_at(tagattributes, o) != " "
                                            then {
                                                estart = o
                                                break;
                                            }
                                        }
                                    }
                                    break;
                            }
                        }
                    }
                    if addtoend > -1 then {//add possible closing tags
                        ds_list_add(l, addtoend)
                    }

                }
            }
            startpos = 0;
            endpos = i;
    }
    break;
}

}

return m.files - 1;
