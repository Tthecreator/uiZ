if selection1Line>=0 then{
    var curPart = textList[| selection1Line]
    var firstPart = string_copy(curPart,1,selection1Char) + chr($0A);
    if selection1Char = string_length(curPart) then{
        var secondPart = "";
    }else{
        var secondPart = string_copy(curPart,selection1Char+1,string_length(curPart));
    }
    var rework = false;
    var scrollToBottom = false;
    //sdbm("inserting new line",curPart,firstPart,secondPart)
    textList[| selection1Line] = firstPart;
    if string_char_at(secondPart,string_length(secondPart))==chr($0A) then{//if second part ends in newline
        ds_list_insert(textList,selection1Line+1,secondPart)
        
        if ds_list_size(textList)*fontHeight>iheight then{//if a new scrollbar appears or changes
            scrolllines=ds_list_size(textList)*fontHeight-iheight;
            if doscroll==false then{
                doscroll=true;
                scroll=uiz_drawscrollbar_init();
                uiz_textarea_rework(false,0);
                uiz_updater_FixViews_area(ix,iy,ilx,ily);
            }else{
                uiz_updater_FixViews_area(ilx-scblwidth-2,iy,ilx,ily);
            }
        }
        
        if doscroll then{
            var w = ilx-scblwidth
        }else{
            var w = ilx;
        }
        
        uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selection1Line),w,ily);
    }else{
        if selection1Line<ds_list_size(textList)-1 then{
            textList[| selection1Line+1] = secondPart + textList[| selection1Line+1];
        }else{
        //textList[| selection1Line+1] = secondPart;
            ds_list_add(textList, secondPart);
            //scroll down to the end, if we are currently scrolled to the end.
            if doscroll and uiz_drawscrollbar_getValue(scroll)==scrolllines then{
                //scroll down to end
                scrollToBottom = true;
            }
        }
        rework = true;

    }
    ++selection1Line;
    selection1Char = 0;
    selection1X = ix;
    if rework then{
        uiz_textarea_reworkAndFix(0)
        //sdbm("textList done adding part to next line")
    }
    uiz_textarea_moveCursorInView();
    //if scrollToBottom then{
    //    uiz_drawscrollbar_setValue(scroll,scrolllines);
    //}
    
    uiz_textarea_registerTypeCursor()
}
