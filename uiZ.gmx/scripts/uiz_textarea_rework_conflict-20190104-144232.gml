#define uiz_textarea_rework
///uiz_textarea_rework(recursive)
//recursive: run script again when scrollbar changes.
sdbm("REWORKING");
if doscroll then{
var avWidth = iwidth-scblwidth;//available width
}else{
var avWidth = iwidth;
}
var lsz = ds_list_size(textList);//number of lines
var addToNextLine = "";
var addToNextLineCheck=true;
for(var i=0;i<lsz;i++){
    //handle all 'to little space' cases:
    var curLine = addToNextLine+textList[| i];
    if addToNextLineCheck=true && selection1Line=i then{
        selection1Char+=string_length(addToNextLine);
    }
    addToNextLineCheck=true;
    if curLine="" then{
        //this line is empty, it also doesn't have any invisible or newline characters.
        ds_list_delete(textList,i);
        i--;//redo this line since the next line might also fit.
        lsz--;
        continue;
    }
    var addToNextLine = "";
    //var curWidth = string_width(curLine);
    var curLen = string_length(curLine);
    var curWidth=0;
    var lastSpace=0;//last position there was a space
    var lineHasBeenHandled=false;
    var lastChar = string_char_at(curLine,curLen);
    for(var e=1;e<=curLen;e++){
        var c = string_char_at(curLine,e);
        var w = string_width(c);
        if c=" " or c=chr(11) then{lastSpace=e;}//the size of invisible whitespaces doesn't matter. So this is placed here so spaces can be cut off.
        if curWidth+w>avWidth then{//if there isn't enough space for this line
            if lastSpace=0 then{
                //no last space found
                textList[| i] = string_copy(curLine,1,e-1);
                if lastChar=chr($0A) then{
                    lsz++;
                    ds_list_insert(textList,i+1,string_copy(curLine, e, curLen-e+1));
                    addToNextLineCheck*=uiz_textarea_rework_sel_downscale(i,e);
                }else{
                    addToNextLine = string_copy(curLine, e, curLen-e+1);
                    if selection1Line=i and selection1Char>e then{
                        selection1Char-=e;
                        selection1Line++;
                        addToNextLineCheck=false;
                    }
                }

            }else{//space found                
                textList[| i] = string_copy(curLine,1,lastSpace);
                if lastChar=chr($0A) then{
                    lsz++;
                    ds_list_insert(textList,i+1,string_copy(curLine, lastSpace+1,curLen-lastSpace+1));
                    addToNextLineCheck*=uiz_textarea_rework_sel_downscale(i,lastSpace);
                }else{
                    addToNextLine = string_copy(curLine, lastSpace+1,curLen-lastSpace+1);
                    if selection1Line=i and selection1Char>lastSpace then{
                        selection1Char-=lastSpace;
                        selection1Line++;
                        addToNextLineCheck=false;
                    }
                }
                
                
                
            }
            lineHasBeenHandled=true;
            break;
        }
        if uiz_isSpaceChar(c) then{lastSpace=e;}
        curWidth+=w;
    }
    
    //handle all 'to much space' cases:
    if !lineHasBeenHandled and avWidth>curWidth and i+1<lsz and lastChar!=chr($0A) and avWidth>=lastReworkAvWidth then{//if more space is available and the line has not been already handled.
        //steal a word from the next line
        var nextLine = textList[| i+1];
        var nextLen = string_length(nextLine);

        var availableSpace = avWidth - curWidth;
        var addWidth = 0;//width of text to add
        var lastSpace=0;//last position there was a space
        for(var e=1;e<=nextLen;e++){
            var c = string_char_at(nextLine,e);
            var w = string_width(c);
            if c=" " or c=chr(11) then{lastSpace=e;}//the size of invisible whitespaces doesn't matter. So this is placed here so spaces can be cut off.
            addWidth+=w;
            if addWidth>availableSpace then{//if we go over the available space
                if lastSpace=0 then{//no space found
                    if !uiz_isSpaceChar(lastChar) then{//the word was cutoff at the line anyway, so we can just put extra text on this line
                        uiz_textarea_rework_sel_upscale(i,e,string_length(curLine),false);
                        textList[| i]=curLine + string_copy(nextLine,1,e-1);
                        textList[| i+1]=string_copy(nextLine,e,nextLen-e+1);
                        lineHasBeenHandled=true; 
                    }else{//no word was cutoff, we need to do something different.
                        //check if there is any other space in the line
                        for(var a=e;a<=nextLen;a++){
                            if uiz_isSpaceChar(string_char_at(curLine,a)) then{lastSpace=a; break;}
                        }
                        if lastSpace=0 then{//stil no space found, just copy a part of that line then
                           uiz_textarea_rework_sel_upscale(i,e,string_length(curLine),false);
                           textList[| i]=curLine + string_copy(nextLine,1,e-1);
                           textList[| i+1]=string_copy(nextLine,e,nextLen-e+1);
                           lineHasBeenHandled=true; 
                           
                        }
                    }
                }else{//space character found
                    //add from line until space character
                    textList[| i]=curLine + string_copy(nextLine,1,lastSpace);
                    textList[| i+1]=string_copy(nextLine,lastSpace+1,nextLen-lastSpace);
                    lineHasBeenHandled=true;
                    uiz_textarea_rework_sel_upscale(i,lastSpace,string_length(curLine),false);
                }
                if !lineHasBeenHandled then{
                    textList[| i] = curLine;
                    lineHasBeenHandled=true;
                }
                break;
            }
            if uiz_isSpaceChar(c) then{lastSpace=e;}
        }
        if !lineHasBeenHandled then{
            //apparently all content of the next line fits on this line.
            textList[| i]=curLine + nextLine;
            uiz_textarea_rework_sel_upscale(i,string_length(nextLine),string_length(curLine),true);
            ds_list_delete(textList,i+1);
            i--;//redo this line since the next line might also fit.
            lsz--;
            continue;
            lineHasBeenHandled=true;
        }
    }
    if !lineHasBeenHandled then{//write all other changes.
         textList[| i] = curLine;
    }
    
}
//add new lines
if addToNextLine!="" then{
uiz_textarea_addLinesFromString(addToNextLine);
}

if lsz*fontHeight>iheight then{
    var shouldScroll=true;
    scrolllines=lsz*fontHeight-iheight;
}else{
    var shouldScroll=false;    
}


if shouldScroll!=doscroll && argument0 then{
    doscroll=shouldScroll;
    scroll=-1;
    uiz_textarea_rework(false);
}


lastReworkAvWidth=avWidth;

if selection1Line>-1 and selection1Line<lsz then{
    selection1X=min(ilx,ix+string_width(string_copy(textList[| selection1Line],1,selection1Char)));
}

#define uiz_textarea_rework_sel_upscale
sdbm("select upscale",argument0,argument1,argument2,argument3,selection1Line,selection1Char)
if argument0+1=selection1Line then{
    if selection1Char<argument1 then{//we're copying the selection over to this line
        selection1Char+=argument2;
        selection1Line--;
    }else{//the selection stays on the next line
        selection1Char-=argument1;
    }
}else{
    if argument3 and argument0<selection1Line then{//if a line is being deleted
        selection1Line--;
    }

}

#define uiz_textarea_rework_sel_downscale
//i: argument0
//e/lastSpace: argument1
var AddToNextLineCheck=true;
if selection1Line>=argument0 then{
    if selection1Line>argument0 or selection1Char>argument1 then{
        if selection1Line=argument0 then{
            selection1Char-=argument1;
            AddToNextLineCheck=false;
        }
        selection1Line++;
    }
}
return AddToNextLineCheck;
