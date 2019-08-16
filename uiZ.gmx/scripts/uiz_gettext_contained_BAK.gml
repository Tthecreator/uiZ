///uiz_gettext_contained(string,width)
/*
This scripts handles SINGLE LINE strings.
It makes breaks the string up so that it doesn't exceed the width given.
For example, this can be useful if you have a button and don't want text to be drawn outside that button. 
*/
var width=argument1
var str;
//if str="texturemode border:" then{sdbm("str",str)}
var totlenght=string_width(argument0)
draw_set_color(c_green)
if totlenght>width then{

var dot=".";
var dots_min=3;
var dots_min_dist=1;
var dotlength = string_width(dot);
var try=1;
if width<dotlength*dots_min then{return string_repeat(dot,width div dotlength);}//nothing to return, there isn't enough space for any text.
width-=dotlength*dots_min;

var atabout=width/totlenght;
var pos = floor(atabout*string_length(argument0));
str = string_copy(argument0,1,pos)
totlength=string_width(str);



if(totlength>width){//2nd try
try=2;

    var atabout=width/totlength;
    var pos = floor(atabout*string_length(str))-1;
    str = string_copy(str,1,pos)
    totlength=string_width(str);
    if(totlength>width){//3rd try
        draw_set_color(c_red);
        return string_repeat(dot,(width div dotlength)+dots_min);
    }

}

//check if there is too much space left
if try=1 and (totlength<width-dotlength*dots_min_dist) then{

    
    var widthleft = width-totlength;
    //copy a max of 5 extra characters.
    var nstr=string_copy(argument0,pos+1,5)
    
    var nstrlength=string_length(nstr);
    while(true){
        if string_char_at(nstr,nstrlength)=" " then{
            nstr=string_copy(nstr,1,--nstrlength)
        }else{
        var nstrwidth=string_width(nstr);
        break;}
    }

    if nstrwidth>widthleft then{
        //not enough space
        var w=0;
        for(var i=1;i<=nstrlength;i++){
            var nchar = string_char_at(nstr,i);
            var ow=w;
            w+=string_width(nchar);
            if w>widthleft then{
            totlength+=ow;
            break;
            }
            str+=nchar;
        }}else{
        //enough space
        str+=nstr;
        totlength+=nstrwidth;
    }
    }
return str+string_repeat(dot,((width-totlength) div dotlength)+3);
}else{
return argument0;}

