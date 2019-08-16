///uiz_text_recalculate(instanceid)
//takes the current text, text settings (font, multiline, etc..) and recalculates the places at which to break the text.
//use this script after all of your uiz_text_settext(), uiz_text_setfont() and uiz_text_setmultiline().
//Example:
    //uiz_text_settext(textobj,"Hello World!")
    //uiz_text_setmultiline(textobj,false)//we only have a single line in our string so this can be set to false.
    //uiz_text_setfont(textobj,fnt_comicSans)
    //we've now set all of our settings and can apply them to the text
    //uiz_text_recalculate(textobj);

//this script is automatically called when you fix the text object and it's size has changed.
//thus this script doesn't have to be called in a scenario like this:
    //textobj.posvalw = 50;
    //textobj.posvalwtype = px;
    //uiz_fixgeneralpos(textobj);
    //no need to call the recalculate script.
    
    
with(argument0){
    if font>-1 then{draw_set_font(font)}
    if multiline then{
        //slower but multiline support
        drawtext=uiz_gettextlines_contained(text,iwidth,iheight)
    }else{
        //faster but only supports a single line
        drawtext=uiz_gettext_contained(text,iwidth);
    }
}


