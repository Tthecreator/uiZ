#define uiz_textarea_doBackspace
var lsz = ds_list_size(textList);
if lsz==0 then exit;
var lineSize = string_length(textList[| selection1Line]);

var selLineAdd=0;
if selection1Char==lineSize && argument0 then{//if we're at the end of the line and we want to do a delete
    if selection1Line+1<lsz then{
        textList[| selection1Line+1] = string_copy(textList[| selection1Line+1], 2, string_length(textList[| selection1Line+1]))
        selLineAdd=+1;
    }
}else{
    if selection1Char==0 && !argument0 then{//if we're at the beginning of the line and we want to do a backspace
        if selection1Line>=1 then{
            if string_char_at(textList[| selection1Line],1)==chr($0A) then{
                textList[| selection1Line]=""
            }else{
                if string_byte_at(textList[| selection1Line-1],string_byte_length(textList[| selection1Line-1])) == $0A then{
                    uiz_textare_doBackspace_removeLastLineLastChar();//remove \n newline char
                    if string_byte_at(textList[| selection1Line-1],string_byte_length(textList[| selection1Line-1])) == $0D then{
                        uiz_textare_doBackspace_removeLastLineLastChar();//remove possible \r newline
                    }
                    //combine two lines
                    textList[| selection1Line-1] += textList[| selection1Line]
                    textList[| selection1Line]=""
                    selection1Line--;
                    selection1Char = string_length(textList[| selection1Line]);
                }else{
                    uiz_textare_doBackspace_removeLastLineLastChar();
                }
                //selLineAdd=-1;
            }
            
        }
    }else{
        if selection1Char==0 && argument0 && string_char_at(textList[| selection1Line],1)==chr($0A) then{//we are pressing delete right before a newline on an otherwise empty line
            textList[| selection1Line]=""
            selection1Char = 0;
            ++selection1Line;
        }else{
            textList[| selection1Line] = uiz_removechar(textList[| selection1Line],selection1Char+argument0);
            if argument0 == 0 then{
                --selection1Char;
                if selection1Line==0 then{
                    selection1X = ix;
                }
            }
        }
    }
}

uiz_textarea_reworkAndFix(selLineAdd)

#define uiz_textare_doBackspace_removeLastLineLastChar
textList[| selection1Line-1] = string_copy(textList[| selection1Line-1],1,string_length(textList[| selection1Line-1])-1);