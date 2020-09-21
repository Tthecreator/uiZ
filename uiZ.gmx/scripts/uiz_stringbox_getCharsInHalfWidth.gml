///uiz_stringbox_getCharsInHalfWidth(incrementor);
//get amount of chars that fit in half a textbox length:
w=0;
var charPosAt=typepos_real;
var charsToMove=0;
while(w<floor(i_ilx-ix)/2 && charPosAt>0 && charPosAt<str_real_size){
    w+=string_width(string_char_at(str_real,charPosAt));
    charPosAt+=argument0;
    charsToMove++;
}
return charsToMove;
