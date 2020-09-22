function uiz_textare_doBackspace_removeLastLineLastChar() {
	textList[| selection1Line-1] = string_copy(textList[| selection1Line-1],1,string_length(textList[| selection1Line-1])-1);



}
