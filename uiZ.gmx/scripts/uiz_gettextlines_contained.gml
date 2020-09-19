///uiz_getTextLines_contained(string, width, height)
//returns string contained in the width and height
//sdbm("startngtetlinescontn")
/*
This scripts handles multi line strings.
It puts newlines at places where the string would normally exceed the width limit.
It also removes any extra lines outside the height.
This is very useful. For example:
you might have a textbox, but don't want anything to be drawn outside that textbox. 
*/
//sdbm("begin script",argument0)
var str = argument0 + chr($0D) + chr($0A);
var width = argument1;
var height = argument2;
var lineheight = string_height("|");
var lines = 0;
var linesmax = height div lineheight;
if linesmax<1 then{return "";}
var sz, ca, line;
var retstring = ""
var lasti = 1;
//find lines
//sz = string_length(str)
sz = string_byte_length(str)
for (i = 1; i <= sz; i++) {
    ca = string_byte_at(str, i)
    if ca = 35
    or ca = $0A then{
        //found line end
        lines++;
        line = string_copy(str, lasti, i - lasti)
        lasti = i

        var totlenght = string_width(line)
        var len = string_length(line)
        while (totlenght > width and len > 1){
            var atabout = width / totlenght;
            
            var osl = max(1, floor(atabout * len))
            var sl = osl
            var sc;
            if osl = 1 then {
                sc = string_char_at(line, 1)
                sl = 2;
            } else {
                sc = string_copy(line, 1, osl - 1);
                for (var e = osl; e > 1; e--) {
                    var thisstr = string_char_at(line, e)
                    if thisstr = " "
                    or thisstr = "-"
                    or thisstr = "_"
                    or thisstr = "/"
                    or thisstr = "\" 
                    or thisstr = "(" 
                    or thisstr = ")" then{
                        sl = e + 1
                        sc = string_copy(line, 1, e);
                        if string_width(sc) <= width then {
                            break;
                        }
                    }
                }
            
            while (string_width(sc) > width and string_length(sc) > 1) {
                osl--;
                sl--;
                var sc = string_copy(line, 1, osl - 1);
            }

        }

        retstring = retstring + sc;
        lines++;
        if (lines) > linesmax then {
            //sdbm("returning current string 1",(lines+1)*lineheight,lines,lineheight,height)
            return retstring;
        }
        retstring +=  chr($0D) + chr($0A);
        
        var len = len-sl+1;
        line = string_copy(line, sl, len)
        var totlenght = string_width(line)
    }
    retstring = retstring + line
    if (lines) >= linesmax then{
        //sdbm("returning current string 2",(lines+1)*lineheight,lines,lineheight,height)
        return retstring;
    }
    




}
}
return retstring;
