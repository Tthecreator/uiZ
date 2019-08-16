///uiz_textarea_resetSelection(id)
with(argument0){

selection1Line=-1;
selection1X=-1;
selection1Char=-1;

selection2Line=-1;
selection2X=-1;
selection2Char=-1

uiz_textarea_resetSelection_selectionOnly();
isTyping=false;
uiz_updater_unstep();
uiz_typecursor_deregister();
redoSelection=false;

}
