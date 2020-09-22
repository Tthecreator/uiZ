//check if step event is still valid
if (global.mouseover != id && mouse_check_button(mb_left)
    //&& !(instance_exists(global.mouseover) && (global.mouseover.object_index=obj_uiZ_window && (global.mouseover.isresizing || global.mouseover.isresizing)))
) || (isTyping == false && hasSelection == false) {
    uiz_updater_unstep();
    uiz_typecursor_deregister();
    isTyping = false;
    exit;
}

if hasSelection = true then {
    isTyping = false;
    uiz_typecursor_deregister();
}

if isTyping then {
    //handle typing animation
    typeanimcount = uiz_animation_increaseCounter(typeanimcount, typeAnimationTime)
    uiz_typecursor_setalpha(uiz_animation_getFunction_twoWay(typeanimcount, uiz_exponential_in, uiz_exponential_in))
}


if font > -1 then {
    draw_set_font(font);
} //font style needed by some function
if keyboard_check(keyboard_key) and!(keyboard_key = 0) then {
    //account = min(account + (1 / (accountspeed * room_speed)), 1)
    account = min(account + uiz_sc(accountspeed), 1)
} else {
    account = 0
}
if lastkeyboard_key != keyboard_key then {
    account = 0
}
if (keyboard_check_pressed(keyboard_key) or account = 1) and!(keyboard_key = 0) then {
if ds_list_size(textList)==0 then{
    textList[| 0]="";
}
    //handle typing
    var canProceedNormalKeyHandling = true;
    if keyboard_check(vk_control) then {
        switch (keyboard_key) {
            case ord("C"): //copy
                if hasSelection then {
                    clipboard_set_text(uiz_textarea_getselection(id));
                }
                canProceedNormalKeyHandling = false;
                break;
            case ord("X"): //cut
                if hasSelection then {
                    clipboard_set_text(uiz_textarea_getselection(id));
                    uiz_textarea_deleteSelection();
                    uiz_textarea_updateTextPart(selection1Line);
                }
                canProceedNormalKeyHandling = false;
                break;
            case ord("V"): //paste
                if hasSelection then{
                    uiz_textarea_deleteSelection();
                }
                uiz_textarea_addstring(clipboard_get_text());
                canProceedNormalKeyHandling = false;
            break;
            case ord("A"): //copy
                uiz_textarea_selectAll();
                canProceedNormalKeyHandling = false;
            break;
        }

    }

    if canProceedNormalKeyHandling then { //control isn't pressed

        //do typing
        account = account - (accbetween/accountspeed)
        var canProceedNormalKeyHandling = true;
        if hasSelection then {
            switch (keyboard_key) {
                case vk_home:
                case vk_end:
                    if !keyboard_check(vk_shift) then{
                    uiz_textarea_FixView_selection(false);
                    uiz_textarea_selectionToSecondCursor();
                    }
                    canProceedNormalKeyHandling = true;
                    break;
                case vk_backspace:
                case vk_delete:
                    uiz_textarea_deleteSelection();
                    uiz_textarea_updateTextPart(selection1Line);
                    canProceedNormalKeyHandling = false;
                    break;
                case vk_enter:
                    uiz_textarea_deleteSelection();
                    uiz_textarea_updateTextPart(selection1Line);
                    canProceedNormalKeyHandling = true;
                    break;
                case vk_left:
                    if !keyboard_check(vk_shift) then {
                        uiz_textarea_FixView_selection(false);
                        uiz_textarea_selectionToLeftCursor();
                        canProceedNormalKeyHandling = false;
                    }
                    break;
                case vk_right:
                    if !keyboard_check(vk_shift) then {
                        uiz_textarea_FixView_selection(false);
                        uiz_textarea_selectionToRightCursor();
                        canProceedNormalKeyHandling = false;
                    }
                    break;
                case vk_up:
                    if !keyboard_check(vk_shift) then {
                        uiz_textarea_FixView_selection(false);
                        uiz_textarea_selectionToFirstCursor();
                        canProceedNormalKeyHandling = false;
                    }
                    break;
                case vk_down:
                    if !keyboard_check(vk_shift) then {
                        uiz_textarea_FixView_selection(false);
                        uiz_textarea_selectionToSecondCursor();
                        canProceedNormalKeyHandling = false;
                    }
                    break;
                default:
                    //remove selection and continue
                    if uiz_textarea_checkKeyboardTypingValidity() then {
                        uiz_textarea_FixView_selection(true);
                        //remove selection
                        uiz_textarea_deleteSelection();
                        canProceedNormalKeyHandling = true;
                    }
                    break;
            }
        }
        uiz_textarea_testCursorNewLine();
        if canProceedNormalKeyHandling then {
            switch (keyboard_key) {
                case vk_home:
                    if keyboard_check(vk_shift) then {
                        if keyboard_check(vk_control) then{//move to begin of first line
                        uiz_textarea_moveSelectionHomeLine();
                    }else{//move to begin of this line
                        uiz_textarea_moveSelectionHome();
                        }
                    } else {
                    if keyboard_check(vk_control) then{//move to begin of first line
                        uiz_textarea_moveCursorHomeLine();
                    }else{//move to begin of this line
                        uiz_textarea_moveCursorHome();
                        }
                    }
                    break;
                case vk_end:
                if keyboard_check(vk_shift) then {
                if keyboard_check(vk_control) then{//move to end of last line
                    uiz_textarea_moveSelectionEndLine();
                }else{//move to end of this line
                uiz_textarea_moveSelectionEnd();
                }
                }else{
                if keyboard_check(vk_control) then{//move to end of last line
                uiz_textarea_moveCursorEndLine();
                }else{//move to end of this line
                    uiz_textarea_moveCursorEnd();
                    }
                    }
                    break;
                case vk_left:
                    if keyboard_check(vk_shift) then {
                        uiz_textarea_moveSelectionLeft();
                    }else{
                        uiz_textarea_moveCursorLeft();
                    }
                    break;
                case vk_right:
                if keyboard_check(vk_shift) then {
                uiz_textarea_moveSelectionRight();
                }else{
                    uiz_textarea_moveCursorRight();
                    }
                    break;
                case vk_down:
                    if keyboard_check(vk_shift) then {
                    uiz_textarea_moveSelectionDown();
                    }else{
                    uiz_textarea_moveCursorDown();
                    }
                    break;
                case vk_up:
                    if keyboard_check(vk_shift) then {
                    uiz_textarea_moveSelectionUp();
                    }else{
                    uiz_textarea_moveCursorUp();
                    }
                    break;
                case vk_backspace:
                    uiz_textarea_doBackspace(0);
                    break;
                case vk_delete:
                    uiz_textarea_doBackspace(1);
                    break;
                case vk_enter:
                    uiz_textarea_insertNewline();
                    break;
                default:

                    //                if keyboard_check(vk_control) or keyboard_check(vk_alt) or(keyboard_key >= 112 and keyboard_key <= 123) or keyboard_key = 174 or keyboard_key = 175 then {} else {
                    if uiz_textarea_checkKeyboardTypingValidity() then {
                        if changesign then {
                            uiz_textarea_addchar(uiz_returnCharAddon(string_char_at(keyboard_string, string_length(keyboard_string)), whatsign))
                        } else {
                            uiz_textarea_addchar(string_char_at(keyboard_string, string_length(keyboard_string)))
                        }
                        whatsign = ""
                        changesign = false;
                        //}

                        break;
                        break;
                    }
            }
        }
        uiz_textarea_testCursorNewLine();
        if !keyboard_check(vk_up) && !keyboard_check(vk_down) then{//if we aren't moving up or down we can reset our up/down moving X position.
            last_moveVerticalX = -1;
        }

    }
}
lastkeyboard_key = keyboard_key

