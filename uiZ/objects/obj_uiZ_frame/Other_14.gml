/// @description auto updater of scrollbars
/***************************************************
  Auto updater
 ***************************************************/
if autoupdatescrollx or autoupdatescrolly then{
    if autoupdatescrollx then{
        updatescrollx=true;
    }
    
    
    if autoupdatescrolly then {
        updatescrolly=true;
    }
    c = uiz_frame_fixscrolling(true,false);
}

/* */
/*  */
