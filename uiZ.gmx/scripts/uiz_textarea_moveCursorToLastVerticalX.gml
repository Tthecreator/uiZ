//moves the cursor to (about) the same x as last_moveVerticalX
//This is used for moving the cursor up and down using the corresponding arrow keys.
var sX = ix;
if argument0==1 then{
var sC = 0;//selection1Char;
var line = textList[| selection1Line];
var linesz = string_length(line);
}else{
var sC = 0;//selection2Char;
var line = textList[| selection2Line];
var linesz = string_length(line);
}

var found=false;
for(var i=1;i<=linesz;++i){
    var c = string_char_at(line,i);
    var c_w = string_width(c);
    if sX + c_w >= last_moveVerticalX then{//if we have exceeded our old selection point.
        if (last_moveVerticalX - sX) < ((sX + c_w) - last_moveVerticalX) then{
            //if selection1X is closer to the old point than selection1X + c_w.
            sC = i-1;
        }else{
            //if selection1X + c_w is closer to the old point than selection1X.
            sC = i;
            sX += c_w;
        }
        found = true;
        break;
    }
    sX += c_w;
}
if !found then{//if line is shorter than the old x position
    sX = ix + string_width(line);
    sC = linesz;
}

if argument0==1 then{
selection1X = sX;
selection1Char = sC;
}else{
selection2X = sX;
selection2Char = sC;
}



uiz_textarea_moveCursorInView();
uiz_textarea_registerTypeCursor();
