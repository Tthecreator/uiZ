///check all needed shortcuts
//returns if an action took place

if(keyboard_check_released(vk_enter)){
    //remove any selections or typing cursor
    uiz_stringbox_disableSelection(id);
    return true;
}

if(keyboard_check(vk_control)){
    if(keyboard_check_pressed(ord('A'))){//select all
        uiz_stringbox_selectAll();
        return true;
    }
    if hasselection=true then{
        if(keyboard_check_pressed(ord('C'))){//copy
            clipboard_set_text(uiz_stringbox_getselectionstring())
            return true;
        }else{
        if(keyboard_check_pressed(ord('X'))){//copy
            clipboard_set_text(uiz_stringbox_getselectionstring())
            uiz_stringbox_deleteselection();
            return true;   
        }else{
        if(keyboard_check_pressed(ord('V'))){//paste
            if clipboard_has_text() then{
                uiz_stringbox_deleteselection();
                uiz_stringbox_insertchars(uiz_stringbox_getClipboardText());
                uiz_updater_FixViews_inside();
            }
            return true;   
        }
        }
        
        }
    }else{
    if(keyboard_check_pressed(ord('V'))){//paste
            if clipboard_has_text() then{
                uiz_stringbox_insertchars(uiz_stringbox_getClipboardText());
                uiz_updater_FixViews_inside();
            }
            return true;   
        }
    }
    return false;
}

    
    
    var press=false;
    if obj_uiZ_controller.keyboard_currentkey!=-1 then{//key was pressed (once)
    if keyboard_check_pressed(obj_uiZ_controller.keyboard_currentkey) then{//key was pressed (once)
        press=true;
       NormalkeyTimer=0;
       NormalkeySinglePressTimer=0;
       }else{//check if key is being held.
        NormalkeyTimer+=uiz_sc(keyHoldingTypingTimer);
        if NormalkeyTimer>=1 then{//pressing this key for long enough
        NormalkeySinglePressTimer+=uiz_sc(keyHoldingTypingSpeed);
        if NormalkeySinglePressTimer>=1 then{
            NormalkeySinglePressTimer=0;
            press=true;
        }
        }
       }
       }
    
    if press then{
    
    if hasselection=true && (keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_delete)) then{
        uiz_stringbox_deleteselection();
        return true;
    }
    
    if keyboard_check_pressed(vk_end) then{
    if keyboard_check(vk_shift) then{
        uiz_stringbox_selectionToEnd();
    }else{
        uiz_stringbox_disToEnd();
        typepos_real=str_real_size;
        typepos_dis_px=ix+str_dis_width;
        uiz_stringbox_typecursor_register();
        uiz_stringbox_typepos_dis_from_real();
        uiz_stringbox_selection_disable();
        }
        return true;
    }
    if keyboard_check_pressed(vk_home) then{
    if keyboard_check(vk_shift) then{
        uiz_stringbox_selectionToBegin();
    }else{
        uiz_stringbox_disToHome();
        uiz_stringbox_selection_disable();
        typepos_dis=0;
        typepos_dis_px=ix;
        uiz_stringbox_typecursor_register();
        uiz_stringbox_resetSelStrings();
        uiz_stringbox_typepos_real_from_dis();
        uiz_updater_FixViews_inside();
        }
        return true;
    }
    
    if keyboard_check(vk_delete) && typepos_real<str_real_size then{
        if str_dis_size<=1 then{
        uiz_stringbox_typer_remainInView();
        }
        uiz_stringbox_deletechar(typepos_real+1)
        return true;
    }
    if keyboard_check(vk_backspace) && typepos_real>0 then{
        uiz_stringbox_typer_remainInView();
        var removedlength=string_width(string_char_at(str_real,typepos_real));
        uiz_stringbox_deletechar(typepos_real)
        uiz_stringbox_typepos_set(typepos_real-1,typepos_dis_px-removedlength);
        return true;
    }
    
    if keyboard_check(vk_left) then{
    uiz_stringbox_moveKeyLeft();
    }
    if keyboard_check(vk_right) then{
    uiz_stringbox_moveKeyRight();
    }
    
    }
    //check for any other key pressed
    if obj_uiZ_controller.keyboard_charPressed=true then{
    
    //var char;
    /*
       if obj_uiZ_controller.keyboard_currentchar!='' then{//key was pressed (once)
        press=true;
        char = obj_uiZ_controller.keyboard_currentchar;
       NormalkeyTimer=0;
       }else{//check if key is being held.
        NormalkeyTimer+=uiz_sc(keyHoldingTypingTimer);
        if NormalkeyTimer>=1 then{//pressing this key for long enough
        NormalkeySinglePressTimer+=uiz_sc(keyHoldingTypingSpeed);
        if NormalkeySinglePressTimer>=1 then{
            NormalkeySinglePressTimer=0;
            press=true;
            char = obj_uiZ_controller.keyboard_lastcurrentchar
            }
        }
       }
       */
       if press then{
           if obj_uiZ_controller.keyboard_currentchar!='' then{
               var char = obj_uiZ_controller.keyboard_currentchar;
           }else{
               var char = obj_uiZ_controller.keyboard_lastcurrentchar
           }
           if (acceptOnlyNumbers==false //we don't need to check if this is creates a valid number
           or (char==string_digits(char) and (typepos_real > 0 or string_char_at(str_real,1)!="-"))//we are typing a number (and we aren't typing it in front of a "-"
           or (acceptOnlyPositive==false and char=="-" and typepos_real = 0 and string_char_at(str_real,1)!="-")//we are typing a "-" at the beginning of the string
           or (acceptOnlyIntegers==false and char=="." and string_count(".",str_real)==0))//we are typing a "." and there are no other "." in the string
           and (char!=chr($0A) and char!=chr($0D))
           then{
              if hasselection then{
                    uiz_stringbox_deleteselection();
              }
           uiz_stringbox_insertchars(char);
           uiz_updater_FixViews_inside(); 
           }
       }
    }else{
    keyboard_oldlastchar="";
    }
    
return false;
