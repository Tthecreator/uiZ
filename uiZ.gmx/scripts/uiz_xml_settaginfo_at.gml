///uiz_xml_settaginfo_at(file,at,infoname,setto)
//set the taginfo

//example A:
//<test name="this"></test>
//uiz_xml_settaginfo_at(file,testHandle,"name","that") becomes:
//<test name="that"></test>

//example B:
//<test></test>
//uiz_xml_settaginfo_at(file,testHandle,"name","that") becomes:
//<test name="that"></test>

//returns whether scenario A or B happened. (Whether data was inserted or edited)
if live_call(argument0,argument1,argument2,argument3) return live_call;
var f = argument0;
var m = obj_uiz_xmlparser;
var l = m.filelistl[| f];
var d = m.filelistd[| f];
var v = m.filelistv[| f];
var lsz = ds_list_size(l);
var h = argument1
var lv,lt;
eh = uiz_xml_gethandleshortend(f, h)
for (var i = h; i < eh; i++) {
    lv = round(uiz_positify(l[| i]) >> 3);
    lt = (uiz_positify(l[| i]) mod 8);
    if lt = 4 and d[| lv] = argument2 then {//we found the correct infoname
        i++;
        if i < eh and i < ds_list_size(l) then {
            lv = round(uiz_positify(l[| i]) >> 3);
            lt = (uiz_positify(l[| i]) mod 8);
            if lt = 5 then {
                v[| lv] = argument3
                return false;
            } else {
                i--;
            }
        }
    }
}
//add to end, we didn't find the data
if(h-eh<=1) then{//if this tag is a headtag and not an headAttributeTag
    lv = round(uiz_positify(l[| h]) >> 3);
    lt = (uiz_positify(l[| h]) mod 8);
    if lt==uiz_xml_headTag then{
        l[| h] = (lv<<3) + uiz_xml_headAttributeTag;
    }else{
        if lt!=uiz_xml_headAttributeTag then{
            sdbm("[uiZ|Warning]Could not change xml headTag into headAttributeTag",h,lt);
            show_error("[uiZ|Warning]Could not change headTag into headAttributeTag",false);
        }
    }
}
ds_list_insert(l, eh, (uiz_list_getadd(d, argument2) << 3) + 4)
ds_list_insert(l, eh + 1, (uiz_list_getadd(v, argument3) << 3) + 5)
return true;
