///uiz_stringUntilNewline(string)
//gets string until newline.
//returns the part before the newline and after the newline in an array
var ret="";
//sdbm("starting check",qstr_selpmin,qstr_selpmax,selplineFull)
var strlen=string_length(argument0)
for(var i=1;i<=strlen;i++){
    var sta = string_char_at(argument0,i);
    //sdbm("checking against",sta,ord(sta))
    if sta = "#"
    or sta = chr($0A) then {
        //there is an enter here
        var retArray;
        retArray[1]=string_copy(argument0,i+1,strlen);
        retArray[0]=ret;
        return retArray;
    }else{
        ret+=sta;
    }
}
//falltrough
var retArray;
retArray[1]="";
retArray[0]=argument0;
return retArray;
