///uiz_string_format(real,total,decimals)
//turns a real into a string preserving all decimal positions.
var sgn = sign(argument0);
if sgn==0 then{return "0";}
var ret = "";
//sdbm("ret",ret,sgn);
var intPart = (floor(sgn*argument0));
if sgn==-1 then{ret="-";}
var floatPart = sgn*(frac(argument0));
//sdbm("input",argument0,sgn,intPart,floatPart)

if intPart==0 then{ret+="0"}else{
    var addRet = "";
    var rep = argument1;//number of times to repeat
    //save int part
    while(intPart>0 and rep>0){
        var f = intPart mod 10;
        addRet = string(f) + addRet;
        intPart = floor(intPart/10);
        --rep;
    }
    ret += addRet;
}

//sdbm("full floatP",floatPart);
if floatPart==0 then{return ret;}else{
    ret+=".";
    var it=10;//mutliplier based on amount of loop iterations
    var rep = argument2;
    while(floatPart>0 and rep>0){
        var e = floatPart*it;
        it*=10;
        var f = (e - frac(e)) mod 10;
        ret += string(f);
        //sdbm("floatP",floatPart,e,e - frac(e),f);
        if frac(e)==0 then{break;}
        //floatPart -= f;
        --rep;
    }
    return ret;
}
