function uiz_textarea_rework_selection() {
	//argument0=list size (lsz)
	var lsz = ds_list_size(textList);
	if selection1Line>-1 and selection1Line<lsz then{
	    selection1X=min(ilx,ix+string_width(string_hash_to_newline(string_copy(string(textList[| selection1Line]),1,selection1Char))));
	}
	if selection2Line>-1 and selection2Line<lsz then{
	    selection2X=min(ilx,ix+string_width(string_hash_to_newline(string_copy(string(textList[| selection2Line]),1,selection2Char))));
	}

	if hasSelection=true then{
	    uiz_textarea_genMinMax();
	}

	if isTyping then{
	    uiz_textarea_registerTypeCursor();
	}



}
