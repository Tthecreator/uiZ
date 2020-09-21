///uiz_mouse_freeze()
//#wiki https://git.tthecreator.win/TtheCreator/uiz/wikis/mouse
//this function will make the mouse selection algoritm stop determining what object is on.
//that means that the mouse state will not change even when the mouse leaves the object.
//usefull for sliders and such that need to work even when the player slides outside of the slider.
//(like the player selects a horizontal slider and then moves the mouse up. The slider should still be selected in that case)
//use uiz_mouse_unFreeze to resume operation.
global.mousefrozen=true;
