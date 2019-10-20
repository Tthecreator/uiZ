///uiz_string_digits(string)
//turn a string and use only digits.
//The difference with the default gml function and this one is that:
//it retains a "-", if the "-" is the first character
//retains the first . it encounters.
var out = "";
var len = string_byte_length(argument0)

var hasdot = false;
var removeLeadingZeros = true;

//check for "-"
if string_char_at(argument0,1)="-" then{out+="-";}

for(var i=1;i<=len;++i){
    //check if this is a number
    var char = string_byte_at(argument0,i)
    if char>48 and char<=57 then{//if this is a number from 1 to 9
        out+=chr(char);
        removeLeadingZeros = false;
    }else if char==48 then{//if this number is 0
        if removeLeadingZeros==false then{
            out+="0";
        }
    }else if hasdot ==false and (char==46 or char==44){//if this is a . or ,
        hasdot=true;
        out+=".";
    }
}

if out=="" or out=="-" or out=="." or out=="-." then{out="0";};
return out;
