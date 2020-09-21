///uiz_string_fromReal(real)
//turns a real into a string preserving all decimal positions.
var sgn = sign(argument0);
if sgn==0 then{return "0";}
var ret = "";
//sdbm("ret",ret,sgn);
var intPart = (floor(sgn*argument0));
if sgn==-1 then{ret="-";}
//var floatPart = sgn*(frac(argument0));
var floatPart = sgn*argument0;
//sdbm("input",argument0,sgn,intPart,floatPart)

if intPart==0 then{
ret+="0"
}else{
    var addRet = "";
    //save int part
    while(intPart>0){
        var f = intPart mod 10;
        addRet = string(f) + addRet;
        intPart = floor(intPart/10);
    }
    ret += addRet;
}

//sdbm("full floatP",floatPart);
if frac(floatPart)==0 then{return ret;}else{
    ret+=".";
    var it=10;//mutliplier based on amount of loop iterations
    while(true){
        var e = floatPart*it;
        it*=10;
        var f = (e - frac(e)) mod 10;
        if frac(e)>=1 then{
            ret += string(f+1);
            break;
        }else{
            ret += string(f);
            if frac(e)==0 then{break;}
        }
    }
    return ret;
}
