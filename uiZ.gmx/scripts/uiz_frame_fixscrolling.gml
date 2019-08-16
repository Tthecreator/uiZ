///uiz_frame_fixscrolling(fixchildren,secondfix)
//set secondfix to false if you don't know what's going on with it.
//secondfix allows a second check to see if the scrollbar in the other orientation should also be enabled when a single one obstructs content.
//returns if children should be updated
var c = false; //update variable
var uy = false;
var ux = false;
if updatescrolly=false and updatescrollx=false then{return false;}
if updatescrolly = true then{//check for changes
    var omscrollbary = mscrollbary;
    mscrollbary = -uiz_getmaxyscrollinframe(id)
    if mscrollbary != omscrollbary then {
        if addy < mscrollbary then {//clamp scrollbar
            c = true;
            addy = clamp(addy, mscrollbary, 0)
        }
        if sign(mscrollbary) != sign(omscrollbary) then {//check to disable/enable scrollbar
            uy = true
        }
    }
}

if updatescrollx = true then {//check for changes
    var omscrollbarx = mscrollbarx;
    mscrollbarx = -uiz_getmaxxscrollinframe(id)
    if mscrollbarx != omscrollbarx then {
        if addx < mscrollbarx then {//clamp scrollbar
            c = true;
            addx = clamp(addx, mscrollbarx, 0)
        }
        if sign(mscrollbarx) != sign(omscrollbarx) then {//check to disable/enable scrollbar
            ux = true
        }
    }
}


if ux or uy then {//actually update margins
    scrollbarcorner_x=0;
    scrollbarcorner_y=0;
    uiz_fix_Base_endmargin();
    if mscrollbary < 0 then {
        var sgm_y = max(0, min(uiz_getposx_self(scrollbarsize, scrollbarsizetype), width - 2));
        end_rightframemargin += sgm_y;
    }
    if mscrollbarx < 0 then {
        var sgm_x = max(0, min(uiz_getposy_self(scrollbarsize, scrollbarsizetype), height - 2));
        end_bottomframemargin += sgm_x;
        if mscrollbary < 0 then{//if both scrollbars are enabled
        scrollbarcorner_x = sgm_x;
        scrollbarcorner_y = sgm_y;
        }
    }
    
    uiz_fix_Base_iValues();
    var c = true;
}

updatescrollx=!updatescrollx;
updatescrolly=!updatescrolly;
if c then{
if argument0 then{//update object
    uiz_fixchildren(id, true);
    if argument1 then{
        uiz_frame_fixscrolling(argument0,false);
    }
}

}

updatescrollx=false;
updatescrolly=false;
return c;
