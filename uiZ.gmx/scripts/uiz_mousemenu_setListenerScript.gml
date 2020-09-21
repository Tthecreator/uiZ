///uiz_mousemenu_setListenerScript(instanceid, listenid,listener_script)
//a listener script is a script that will be called after the user
//has selection an item in the mouse menu and before the menu is
//destroyed. The listener_script should take 2 arguments in order:
//(menu id, listen id)
//example: uiz_mousemenu_setListenerScript(id,uiz_dropdown_returnscript);
argument0.listener=argument1;
argument0.listener_script=argument2;
