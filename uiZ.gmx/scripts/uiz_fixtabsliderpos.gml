 var t=argument0;
with(t){
uiz_fix_Base();
//get size of spacings
//getlist=true

if ds_exists(tablist,ds_type_list) then{
    var sz=ds_list_size(tablist)
    if oldwidth!=width || sz!=oldsz then{
        uiz_ds_list_resize(spacinglist,sz,0)
        if font!=-1 then{draw_set_font(font)}
        for(var i=0;i<sz;i++){
        spacinglist[| i]=string_width(string(tablist[| i]));
        }
        uiz_spaceareas_format_changelist(spacinglist,width)
    }
    if oldwidth!=width || oldx!=rx then{
        //set mouseSelection
        uiz_tabslider_getMouseItem();
        
        //set selectorsliderthingy
        newpos=rx;
        for(var i=0;i<value;i++){
            newpos+=spacinglist[|i];
        }
        newwidth=spacinglist[|i];
        newTabPos=newpos;
        
    }
    oldwidth=width;
    oldx=rx;
    oldsz=sz;
}




tabY = rly - uiz_getposy_self(marksize, marksizetype);

}

