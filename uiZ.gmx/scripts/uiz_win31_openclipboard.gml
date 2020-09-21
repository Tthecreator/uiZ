var swipicon = argument0;
with(argument1){
    object_clipboard=instance_create(0,0,obj_windows31_clipboard)//this is not a uiz object, just a controller object
    window_clipboard=uiz_win31_createwindow(obj_uiZ_controller.id,"Clipboard",true)//we create the window in this object to keep the window controls working
    object_clipboard.window=window_clipboard;//give our new object a reference to our window
    with(object_clipboard){
        //setup object
        text=uiz_c(obj_uiZ_text)
        uiz_setParent(text,window)
        text.posinframex=uiz_fill;
        text.posinframey=uiz_fill;
        uiz_text_setmultiline(text, true)
        if clipboard_has_text() then{
            uiz_text_settext(text, clipboard_get_text());
        }else{
            uiz_text_settext(text, "");
        }
        uiz_fixgeneralpos(text)
    }
}

