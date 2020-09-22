/// @description handle selections
//get current mouse position

if doscroll=true then{
var scrbx = ilx-scblwidth;
}else{
var scrbx = ilx;
}
var isScrollbarSelected = uiz_drawscrollbar_getSelected(scroll);
//kmouseover=uiz_mouse_isOver_object_leftCheck(id);
//sdbm("cheking...",kmouseover,doscroll,uiz_getmouse_x(),scrbx, isScrollbarSelected, last_isScrollbarSelected)
if kmouseover>=uiz_mouseclick && (doscroll=false or (uiz_getmouse_x()<scrbx && !isScrollbarSelected && !last_isScrollbarSelected)) then{

    uiz_mouse_freeze();
    var selectionCLine=-1;
    var selectionCX=-1;
    var selectionCChar=-1;
    last_moveVerticalX = -1;
    
    
    var lsz = ds_list_size(textList);
    //if lsz=0 then{
    //            exit;
    //}
    selectionCLine=floor((uiz_getmouse_y()-iy+listFromPx)/fontHeight);
    if selectionCLine >=lsz then{
        if lsz==0 then{
            textList[| 0] = "";
            selectionCLine=0;
            selectionCChar = 0;
            selectionCX = ix;
        }else{
            selectionCLine=lsz-1;
            selectionCChar = string_length(textList[| selectionCLine]);
            selectionCX = min(ilx,ix+string_width(string_hash_to_newline(textList[| selectionCLine])));
        }
    }else{
        if selectionCLine<0 then{
            selectionCLine=0;
            selectionCChar=0;
            selectionCX=ix;
            //selectionCChar = string_length(textList[| 0]);
            //selectionCX = string_width(textList[| 0])
        }else{
            var testLine = textList[| selectionCLine];
            var testLineSz = string_length(testLine);
            var curX=ix;
            selectionCX=curX;
            var mouseX = uiz_getmouse_x();
            
            for(var i=1;i<=testLineSz;i++){
                var w = string_width(string_hash_to_newline(string_char_at(testLine,i)));
                if curX+w/2>mouseX then{//when this mouse is further selected beyond this character
                    selectionCChar=i-1;
                    selectionCX=curX;
                    break;
                }
                curX+=w;
            }
            
            if (i>testLineSz){//loop was looped fully, so no selection position was found, just assume the last character then.
                selectionCChar=testLineSz;
                selectionCX=curX;
            }
            }
    }
    
    //put cursor before newline position
    //sdbm("Checking char",textList[| selectionCLine],string_length(textList[| selectionCLine]),string_char_at(textList[| selectionCLine],selectionCChar),ord(string_char_at(textList[| selectionCLine],selectionCChar)))
    if(selectionCChar>0 and string_char_at(textList[| selectionCLine],selectionCChar)==chr($0A)){
        //sdbm("Moving char back")
        --selectionCChar
    }
    
    //handle the newly gotten selection point
    var hadSelection = hasSelection;
    if mouse_check_button_pressed(mb_left) && (!keyboard_check(vk_shift) || selection1Line==-1) then{
        //hasMousePressed=true;
        selection1Line=selectionCLine;
        selection1X=selectionCX;
        selection1Char=selectionCChar;
    }
    selection2Line=selectionCLine;
    selection2X=selectionCX;
    selection2Char=selectionCChar;
    
    if selection1Line!=-1 then{
        uiz_textarea_testCursorNewLine();
        uiz_textarea_handleSelectingOrTyping();
        uiz_textarea_calculateNewView(hadSelection);
    }
    
    if !mouse_check_button(mb_left) then{
        uiz_mouse_unFreeze();
        //hasMousePressed=false;
    }
    
    
        
    
}else{
    if !mouse_check_button(mb_left) then{
            uiz_mouse_unFreeze();
            //hasMousePressed=false;
        }
}
last_isScrollbarSelected=isScrollbarSelected;



