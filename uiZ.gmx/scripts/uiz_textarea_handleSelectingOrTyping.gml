///uiz_textarea_handleSelectingOrTyping(bool checkmouse)
sdbm("uiz_textarea_handleSelectingOrTyping")
if uiz_textarea_selectionAreTheSame(){//check type/selection state
            hasSelection=false;
            sdbm("check typing")
            if !mouse_check_button(mb_left) then{
                isTyping=true;
                sdbm("isTyping=true;")
                uiz_updater_step();
                uiz_textarea_registerTypeCursor();
            }
        }else{
            isTyping=false;
            hasSelection=true;
            uiz_updater_step();
            uiz_textarea_registerTypeCursor();
        }
