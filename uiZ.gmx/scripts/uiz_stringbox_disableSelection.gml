///uiz_stringbox_event_disableEvent(id)
//deselects the stringbox. Also deselects any selection made.
with(argument0){
    if typing = true then{
            typing = false;
            uiz_typecursor_deregister();
        }
        uiz_stringbox_selection_disable();
        update = true;
        updated = true;
        uiz_updater_unstep();
    
}
