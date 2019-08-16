///uiz_mousemenu_setListenerScript(listenerid,listener_script)
//a listener script is a script that will be called after the user
//has selection an item in the mouse menu and before the menu is
//destroyed. The listener_script should take 2 arguments in order:
//(menu id, listener id)
//example: uiz_mousemenu_setListenerScript(id,uiz_dropdown_returnscript);
menu.listener=argument0;
menu.listener_script=argument1;
