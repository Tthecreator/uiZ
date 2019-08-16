var t = argument0;
with(t) {
    //uiz_fix_Base();
    uiz_fix_Background();
    uiz_fix_Base_Pos();
    uiz_fix_Base_View();
    uiz_fix_Base_endmargin();



    if (scrollx or scrolly) then {

        mscrollbarx = -uiz_getmaxxscrollinframe(id)
        if addx < mscrollbarx then {
            cx = true;
            addx = clamp(addx, mscrollbarx, 0)
        }

        if mscrollbarx < 0 and scrollbarx = true then {

            var sgm_y = max(0, min(uiz_getposy_self(scrollbarsize, scrollbarsizetype), height - 2));
            end_bottomframemargin += sgm_y;
        }
        mscrollbary = -uiz_getmaxyscrollinframe(id)
        if addy < mscrollbary then {
            cy = true;
            addy = clamp(addy, mscrollbary, 0)
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


    }
    uiz_fix_Base_iValues()
}
