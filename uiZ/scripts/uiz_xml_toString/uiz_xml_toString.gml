/// @description uiz_xml_toString(id)
/// @param id
function uiz_xml_toString(argument0) {
	//with(obj_uiz_xmlparser){
	var m = obj_uiz_xmlparser;
	var l = m.filelistl[| argument0];
	var d = m.filelistd[| argument0];
	var v = m.filelistv[| argument0];
	var intofolder = 0
	var intostring = ""
	var str = "";
	var lsz = ds_list_size(l)
	var dsz = ds_list_size(d)
	var vsz = ds_list_size(v)
	var kstr = ""
	for (var i = 0; i < lsz; i++) {
	    p = (uiz_positify(l[| i]) mod 8)
	    g = round(uiz_positify(l[| i]) >> 3)
	    switch (p) {
	        case 0:
	            //H
	            if i + 1 < lsz and(uiz_positify(l[| i + 1]) mod 8) = 7 then {
	                i++
	                //sdbm("ops1",d,g,d[|g],i)
	                str += (intostring + "<" + d[| g] + "/>")+chr($0A);
	            } else {
	                //sdbm("ops2",d,g,d[|g],i)
	                str += (intostring + "<" + d[| g] + ">")+chr($0A);
	                intofolder++;
	                intostring = uiz_string_repeat(" ", intofolder * 2)
	            }
	            break;

	        case 1:
	            //K
	            var wstr = "<" + d[| g];
	            //if i+2<lsz then{}
	            while (i + 2 < lsz) {
	                i++;
	                p = (uiz_positify(l[| i]) mod 8)
	                g = round(uiz_positify(l[| i]) >> 3)
	                i++;
	                p2 = (uiz_positify(l[| i]) mod 8)
	                g2 = round(uiz_positify(l[| i]) >> 3)
	                //if p=N and p2=I
	                if p = 4 and p2 = 5 then {
	                    var kstr = string(v[| g2]);
	                    //sdbm(kstr,g2)
	                    if string_char_at(kstr, 1) != "\""
	                    then {
	                        kstr = "\"" + kstr
	                    }
	                    if string_char_at(kstr, string_length(kstr)) != "\""
	                    then {
	                        kstr += "\""
	                    }
	                    wstr += " " + d[| g] + "=" + kstr
	                }
	                else {
	                    i -= 2;
	                    break;
	                }
	            }
	            if i + 1 < lsz and(uiz_positify(l[| i + 1]) mod 8) = 7 then {
	                i++
	                wstr += "/>";
	                str += (intostring + wstr)+chr($0A);
	            } else {
	                wstr += ">";
	                str += (intostring + wstr)+chr($0A);
	                intofolder++;
	                intostring = uiz_string_repeat(" ", intofolder * 2)
	            }
	            break;

	        case 2:
	            //T
	            if i + 1 < lsz then {
	                i++;
	                p2 = (uiz_positify(l[| i]) mod 8)
	                g2 = round(uiz_positify(l[| i]) >> 3)
	                //if p2=I
	                //sdbm("running1")
	                if p2 = 5 then {
	                    //sdbm("running2","<"+d[|g]+">"+v[|g2]+"</"+d[|g]+">")
	                    str += (intostring + "<" + d[| g] + ">" + string(v[| g2]) + "</" + d[| g] + ">")+chr($0A);
	                } else {
	                    i--;
	                }
	            }
	            break;

	        case 3:
	            //O
	            if i + 1 < lsz then {
	                var wstr = "<" + d[| g];
	                while (i + 1 < lsz) {
	                    i++;
	                    p2 = (uiz_positify(l[| i]) mod 8)
	                    g2 = round(uiz_positify(l[| i]) >> 3)
	                    //if p2=N
	                    if p2 = 4 then {
	                        if i + 1 < lsz then {
	                            i++;
	                            p3 = (uiz_positify(l[| i]) mod 8)
	                            g3 = round(uiz_positify(l[| i]) >> 3)
	                            //if p3=I
	                            if p3 = 5 then {
	                                //sdbm(kstr,g2)
	                                var kstr = string(v[| g3]);
	                                if string_char_at(kstr, 1) != "\""
	                                then {
	                                    kstr = "\"" + kstr
	                                }
	                                if string_char_at(kstr, string_length(kstr)) != "\""
	                                then {
	                                    kstr += "\""
	                                }
	                                wstr += " " + d[| g2] + "=" + kstr
	                            } else {
	                                i--;
	                            }
	                        }
	                    } else {
	                        break;
	                    }
	                }
	                //if p3=I
	                if p2 = 5 then {
	                    str += ( intostring + wstr + ">" + string(v[| g2]) + "</" + d[| g] + ">")+chr($0A);
	                }
	            }
	            break;
	        case 6:
	            //C
	            var wstr = "<" + d[| g];
	            //if i+2<lsz then{}
	            while (i + 2 < lsz) {
	                i++;
	                p = (uiz_positify(l[| i]) mod 8)
	                g = round(l[| i] >> 3)
	                i++;
	                p2 = (uiz_positify(l[| i]) mod 8)
	                g2 = round(uiz_positify(l[| i]) >> 3)
	                //if p=N and p2=I
	                if p = 4 and p2 = 5 then {
	                    var kstr = string(v[| g2])
	                    if string_char_at(kstr, 1) != "\""
	                    then {
	                        kstr = "\"" + kstr
	                    }
	                    if string_char_at(kstr, string_length(kstr)) != "\""
	                    then {
	                        kstr += "\""
	                    }
	                    wstr += " " + d[| g] + "=" + kstr
	                }
	                else {
	                    i -= 2;
	                    break;
	                }
	            }
	            wstr += "/>";
	            str += (intostring + wstr)+chr($0A);
	            break;
	        case 7:
	            //E
	            intofolder = max(0, intofolder - 1)
	            intostring = uiz_string_repeat(" ", intofolder * 2)
	            str += (intostring + "</" + d[| g] + ">")+chr($0A);
	            break;
	    }
	}

	return str;
	//}



}
