var t = argument0;
with(t) {
    //uiz_fix_Base();
    uiz_fix_Background();
    uiz_fix_Base_Pos();
    uiz_fix_Base_View();
    uiz_fix_Base_endmargin();



    if (scrollx or scrolly) then {
        var omscrollbarx = mscrollbarx;
        var omscrollbary = mscrollbary;
        mscrollbarx = -uiz_getMaxXScrollInObject(id)
        if addx < mscrollbarx then {
            addx = clamp(addx, mscrollbarx, 0);
            uiz_drawscrollbar_setValue(uscrollx,-addx);
            uiz_drawscrollbar_update(uscrollx,rx,ily,rlx-scrollbarcorner_x,rly,uiz_horizontal)
        }

        if mscrollbarx < 0 and scrollbarx = true then {

            var sgm_y = max(0, min(uiz_getposy_self(scrollbarsize, scrollbarsizetype), height - 2));
            end_bottomframemargin += sgm_y;
        }
        mscrollbary = -uiz_getMaxYScrollInObject(id);
        
        if addy < mscrollbary then {
            addy = clamp(addy, mscrollbary, 0)
            uiz_drawscrollbar_setValue(uscrolly,-addy);
            uiz_drawscrollbar_update(uscrolly,ilx,ry,rlx,rly-scrollbarcorner_y,uiz_vertical);
        }
        if mscrollbary < 0 and scrollbary = true then {
            var sgm_x = max(0, min(uiz_getposx_self(scrollbarsize, scrollbarsizetype), width - 2));
            end_rightframemargin += sgm_x;
        }
        scrollbarcorner_x = 0;
        scrollbarcorner_y = 0;
        if mscrollbary < 0 and mscrollbarx < 0 then {
            scrollbarcorner_x = sgm_x;
            scrollbarcorner_y = sgm_y;
        }

        uiz_frame_tellListeners();
        if (omscrollbarx != mscrollbarx or omscrollbary != mscrollbary) then{
            uiz_updater_FixViews();
            uiz_fix_Base_iValues()
            uiz_fixChildren(id, true);
        }else{
            uiz_fix_Base_iValues()
        }
    }else{
        uiz_fix_Base_iValues()
    }
}
