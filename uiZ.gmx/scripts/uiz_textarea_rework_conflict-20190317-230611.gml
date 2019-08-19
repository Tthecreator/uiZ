#define uiz_textarea_rework
///uiz_textarea_rework(recursive,startat)
//recursive: run script again when scrollbar changes.
//return: 0 if no lines/one single line has changed
//return: 1 if some lines have changed
//return: 2 if all lines have changed;
sdbm("REWORKING",global.uiz_stepNumber);
if doscroll then{
var avWidth = iwidth-scblwidth;//available width
//sdbm("avw -s",avWidth);
}else{
var avWidth = iwidth;
//sdbm("avw n",avWidth);
}
var lsz = ds_list_size(textList);//number of lines
var addToNextLine = "";
var addToNextLineCheck_sel1=true;
var addToNextLineCheck_sel2=true;

if argument1=0 then{
    var moreLinesChanged=2;
}else{
    var moreLinesChanged=-1;
}
for(var i=argument1;i<lsz;i++){
sdbm("rework line",i);
    //handle all 'to little space' cases:
    var curLine = addToNextLine+textList[| i];
    if addToNextLineCheck_sel1=true && selection1Line=i then{
        //sdbm("addToNextLineFor1Char",selection1Char,addToNextLine)
        selection1Char+=string_length(addToNextLine);
        //sdbm("addToNextLineFor1Char DONE",selection1Char)
    }
    if addToNextLineCheck_sel2=true && selection2Line=i then{
        selection2Char+=string_length(addToNextLine);
    }
    addToNextLineCheck_sel1=true;
    addToNextLineCheck_sel2=true;
    if curLine="" then{
        //this line is empty, it also doesn't have any invisible or newline characters.
        ds_list_delete(textList,i);
        i--;//redo this line since the next line might also fit.
        lsz--;
        uiz_textarea_rework_sel_delline(i)
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
        if curWidth+w>avWidth then {//if there isn't enough space for this line
            e--;
            if e<1 then{e=1;}
            moreLinesChanged=1;
            sdbm("moreLinesChanged=1",0)
            if lastSpace=0 then{
                //no last space found
                textList[| i] = string_copy(curLine,1,e);
                //sdbm("setting textList entry to 1",textList[| i]);
                if lastChar=chr($0A) then{
                    lsz++;
                    ds_list_insert(textList,i+1,string_copy(curLine, e+1, curLen-e+1));
                    //sdbm("doing downscale 1");
                    uiz_textarea_rework_sel_downscale(i,e);
                }else{
                    addToNextLine = string_copy(curLine, e+1, curLen-e+1);
                        //sdbm("try remove chars 1",string_copy(curLine, 1, e),addToNextLine,curLine)
                    if selection1Line=i and selection1Char>e then{
                        //sdbm("jaa, remove chars again 1",selection1Char,e,selection1Line)
                        selection1Char-=e;
                        selection1Line++;
                        addToNextLineCheck_sel1=false;
                        //sdbm("jaa, remove chars done 1",selection1Char,e,selection1Line)
                    }
                    if selection2Line=i and selection2Char>e then{
                        selection2Char-=e;
                        selection2Line++;
                        addToNextLineCheck_sel2=false;
                    }
                }

            }else{//space found                
                textList[| i] = string_copy(curLine,1,lastSpace);
                //sdbm("setting textList entry to 2",textList[| i]);
                if lastChar=chr($0A) then{
                    lsz++;
                    ds_list_insert(textList,i+1,string_copy(curLine, lastSpace+1,curLen-lastSpace+1));
                    //sdbm("doing downscale 2");
                    uiz_textarea_rework_sel_downscale(i,lastSpace);
                }else{
                    addToNextLine = string_copy(curLine, lastSpace+1,curLen-lastSpace+1);
                    //sdbm("try remove chars 2",string_copy(curLine, 1, lastSpace),addToNextLine)
                    if selection1Line=i and selection1Char>lastSpace then{
                        //sdbm("jaa, remove chars again 2",selection1Char,lastSpace,selection1Line)
                        selection1Char-=lastSpace;
                        selection1Line++;
                        addToNextLineCheck_sel1=false;
                        //sdbm("jaa, remove chars done 2",selection1Char,lastSpace,selection1Line)
                    }
                    if selection2Line=i and selection2Char>lastSpace then{
                        selection2Char-=lastSpace;
                        selection2Line++;
                        addToNextLineCheck_sel2=false;
                    }
                }
                
                
                
            }
            lineHasBeenHandled=true;
            break;
        }
        if uiz_isSpaceChar(c) then{lastSpace=e;}
        curWidth+=w;
    }
    if !lineHasBeenHandled and moreLinesChanged=0{
    //            return 0;
            }
    
    //handle all 'to much space' cases:
    if !lineHasBeenHandled and avWidth>curWidth and i+1<lsz and lastChar!=chr($0A) and avWidth>=lastReworkAvWidth then{//if more space is available and the line has not been already handled.
        //steal a word from the next line
        var nextLine = textList[| i+1];
        //sdbm("setting textList entry to 3",textList[| i]);
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
                moreLinesChanged=1;
                            sdbm("moreLinesChanged=1",1)
                if lastSpace=0 then{//no space found
                    if !uiz_isSpaceChar(lastChar) then{//the word was cutoff at the line anyway, so we can just put extra text on this line
                        uiz_textarea_rework_sel_upscale(i,e-1,string_length(curLine),false);
                        //sdbm("upscl done 1",selection1Line,selection1Char,curLine)
                        textList[| i]=curLine + string_copy(nextLine,1,e-1);
                        textList[| i+1]=string_copy(nextLine,e,nextLen-e+1);
                        //sdbm("setting textList entry to 4",textList[| i]);
                        //sdbm("setting textList+1 entry to 4",textList[| i+1]);
                        lineHasBeenHandled=true; 
                    }else{//no word was cutoff, we need to do something different.
                        //check if there is any other space in the line
                        for(var a=e;a<=nextLen;a++){
                            if uiz_isSpaceChar(string_char_at(curLine,a)) then{lastSpace=a; break;}
                        }
                        if lastSpace=0 then{//stil no space found, just copy a part of that line then
                           uiz_textarea_rework_sel_upscale(i,e-1,string_length(curLine),false);
                          //sdbm("upscl done 2",selection1Line,selection1Char,curLine)
                           textList[| i]=curLine + string_copy(nextLine,1,e-1);
                           textList[| i+1]=string_copy(nextLine,e,nextLen-e+1);
                           //sdbm("setting textList entry to 5",textList[| i]);
                           //sdbm("setting textList+1 entry to 5",textList[| i+1]);
                           lineHasBeenHandled=true; 
                           
                        }
                    }
                }else{//space character found
                    //add from line until space character
                    textList[| i]=curLine + string_copy(nextLine,1,lastSpace);
                    textList[| i+1]=string_copy(nextLine,lastSpace+1,nextLen-lastSpace);
                    //sdbm("setting textList entry to 6",textList[| i]);
                   //sdbm("setting textList+1 entry to 6",textList[| i+1]);
                    lineHasBeenHandled=true;
                    uiz_textarea_rework_sel_upscale(i,lastSpace,string_length(curLine),false);
                    //sdbm("upscl done 3",selection1Line,selection1Char,curLine)
                }
                if !lineHasBeenHandled then{
                    textList[| i] = curLine;
                    //sdbm("setting textList entry to 7",textList[| i]);
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
            //sdbm("upscl done 4",selection1Line,selection1Char,curLine)
            ds_list_delete(textList,i+1);
            i--;//redo this line since the next line might also fit.
            lsz--;
            continue;
            lineHasBeenHandled=true;
        }
    }
    if !lineHasBeenHandled then{//write all other changes.
    if moreLinesChanged=0 then{
    sdbm(" moreLinesChanged=0, ret 0");
        return 0;
    }
         textList[| i] = curLine;
         //sdbm("setting textList entry to 8",textList[| i]);
    }
    if moreLinesChanged=-1 then{
        moreLinesChanged=0;
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

lastReworkAvWidth=avWidth;

//var shouldScroll=false;

if shouldScroll!=doscroll && argument0 then{
    doscroll=shouldScroll;
    scroll=-1;
    uiz_textarea_rework(false,0);
    moreLinesChanged=2
}

if argument1=0 then{
moreLinesChanged=2;
}

uiz_textarea_rework_selection();

return moreLinesChanged



#define uiz_textarea_rework_sel_upscale
//sdbm("select upscale",argument0,argument1,argument2,argument3,selection1Line,selection1Char)
if argument0+1=selection1Line then{
    if selection1Char<=argument1 then{//we're copying the selection over to this line
        ////sdbm("Add char");
        selection1Char+=argument2;
        selection1Line--;
    }else{//the selection stays on the next line
        //sdbm("remove char");
        selection1Char-=argument1;
    }
}else{
    if argument3 and argument0<selection1Line then{//if a line is being deleted
        selection1Line--;
    }

}


//I'm so terribly sorry I had to copy this over, but this is because of GM. Yes I could have worked with arrays, but this is now spaghettic code anyways.

if argument0+1=selection2Line then{
    if selection2Char<=argument1 then{//we're copying the selection over to this line
        selection2Char+=argument2;
        selection2Line--;
    }else{//the selection stays on the next line
        selection2Char-=argument1;
    }
}else{
    if argument3 and argument0<selection2Line then{//if a line is being deleted
        selection2Line--;
    }

}

#define uiz_textarea_rework_sel_downscale
//i: argument0
//e/lastSpace: argument1
//sdbm("select downscale",argument0,argument1,selection1Line,selection1Char)
if selection1Line>=argument0 then{
    if selection1Line>argument0 or selection1Char>argument1 then{
        if selection1Line=argument0 then{
            selection1Char-=argument1;
            addToNextLineCheck_sel1=false;
        }
        selection1Line++;
    }
}

//I'm so terribly sorry I had to copy this over, but this is because of GM. Yes I could have worked with arrays, but this is now spaghettic code anyways.
if selection2Line>=argument0 then{
    if selection2Line>argument0 or selection2Char>argument1 then{
        if selection2Line=argument0 then{
            selection2Char-=argument1;
            addToNextLineCheck_sel2=false;
        }
        selection2Line++;
    }
}




#define uiz_textarea_rework_selection
//argument0=list size (lsz)
var lsz = ds_list_size(textList);
if selection1Line>-1 and selection1Line<lsz then{
    selection1X=min(ilx,ix+string_width(string_copy(string(textList[| selection1Line]),1,selection1Char)));
}
if selection2Line>-1 and selection2Line<lsz then{
    selection2X=min(ilx,ix+string_width(string_copy(string(textList[| selection2Line]),1,selection2Char)));
}

if hasSelection=true then{
    uiz_textarea_genMinMax();
}

if isTyping then{
    uiz_textarea_registerTypeCursor();
}
#define uiz_textarea_rework_sel_delline
if selection1Line>=0 and argument0>=selection1Line then{//if a line is being deleted
        selection1Line--;
}

if selection2Line>=0 and argument0>=selection2Line then{//if a line is being deleted
        selection2Line--;
}