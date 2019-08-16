///uiz_set_cursor(constant)
/*
This script is a easy interface between uiz, and your game to make sure that there is one global type of mouse.
It allows you to easily to either use the default windows mouse, or a custom sprite.
This script is meant for use inside uiz objects, to SET the mouse to a type.
If you want the change how, for example, "cr_hourglass" looks you can change the global variable "global.uiz_cr_hourglass"
Here is a list of global variables:
global.uiz_cr_none
global.uiz_cr_default
global.uiz_cr_arrow
global.uiz_cr_cross
global.uiz_cr_beam
global.uiz_cr_size_nesw
global.uiz_cr_size_ns
global.uiz_cr_size_nwse
global.uiz_cr_size_we
global.uiz_cr_uparrow
global.uiz_cr_hourglass
global.uiz_cr_drag
global.uiz_cr_appstart
global.uiz_cr_handpoint
global.uiz_cr_size_all

These global variables can either refer to a sprite which will then be used, or to a value of -1 which will use the default windows versions of these sprites. Also for this script you need to supply it with one of these mouse constants:
-cr_none
-cr_default
-cr_arrow
-cr_cross
-cr_beam
-cr_size_nesw
-cr_size_ns
-cr_size_nwse
-cr_size_we
-cr_uparrow
-cr_hourglass
-cr_drag
-cr_appstart
-cr_handpoint
-cr_size_all
You can also look in the game maker manual on "window_set_cursor " to get a better idea of these constants and global variables.
Uiz resets the mouse to cr_default in the beginning of every step.
*/
global.uiz_mouseis=argument0;
