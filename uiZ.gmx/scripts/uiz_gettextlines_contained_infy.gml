///uiz_gettextlines_contained(string,width)
//returns string contained in the width but supporting an infinite height
/*
This scripts handles multi line strings.
It puts newlines at places where the string would normally exceed the width limit.
It DOES NOT REMOVE any lines, thus this script could create something that is 100, 1000 or more lines in height.
This is very useful. For example:
you might have a scrollable textbox, but don't want anything to be drawn outside that scrollable textbox. 
*/
//sdbm("startngtetlinescontn")
var str=argument0+"#";
var width=argument1
//var height=argument2
var sz,ca,line
var retstring=""
var lasti=1
//find lines
sz=string_length(str)
for(i=1;i<=sz;i++){
//if (get_timer() mod 100)=1 then{sdbm("I might be crashing",i)}
ca=string_char_at(str,i)
if ca="#" or ca=chr($0A) then{
//found line end
line=string_copy(str,lasti,i-lasti)
lasti=i
var sl=0;
var totlenght=string_width(line)
//if totlenght>width then{
//sdbm("# found",line,totlenght)
while(totlenght>width and string_length(line)>1){
var atabout=width/totlenght;
var len=string_length(line)
var osl=max(1,floor(atabout*len))
var sl=osl

var sc=string_copy(line,1,osl-1);
//if (get_timer() mod 1000)=1 then{sdbm("# while!",line,osl,sl,totlenght,width,atabout*len)}
//if (get_timer() mod 1000)=1 then{sdbm("# while!",line,osl,sl)}
if osl=1 then{
sc=string_char_at(line,1)
sl=2;
}else{
while(string_width(sc)>width and string_length(sc)>1){
osl--;
sl--;
var sc=string_copy(line,1,osl-1);
}
}
//if (get_timer() mod 1000)=1 then{sdbm("# while!end")}
//if i>70 and i<100 then{sdbm(sc)}
//while(string_width(sc))
for(var e=osl-1;e>1;e--){
//if (get_timer() mod 100)=1 then{ sdbm("I might be crashing on e",e)}
var thisstr=string_char_at(line,e)
if uiz_isSpaceChar(thisstr) then{
sl=e+1;
sc=string_copy(line,1,e);
break;
}
}


//if string_height(retstring)+string_height(sc)>height then{return retstring;}
retstring=retstring+sc+"#";
line=string_copy(line,sl,len-sl+1)
var totlenght=string_width(line)
}
//sdbm("endwhile")
//if string_height(retstring)+string_height(line)>height then{return retstring;}
retstring=retstring+line
//else{retstring=retstring+line break;}




}
}
//sdbm("endngtetlinescontn")
return retstring;
