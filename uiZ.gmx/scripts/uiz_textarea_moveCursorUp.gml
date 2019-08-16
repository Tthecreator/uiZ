if uiz_textarea_moveCursorBoundsCheck() then{exit;}

if selection1Line>0 && selection1Line!=-1 then{
    --selection1Line;//increase line
    
    if last_moveVerticalX =-1 then{
        last_moveVerticalX = selection1X;//save old x pos
    }
    uiz_textarea_moveCursorToLastVerticalX(1);
}
