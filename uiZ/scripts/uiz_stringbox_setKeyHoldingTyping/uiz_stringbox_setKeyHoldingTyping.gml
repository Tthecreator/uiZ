/// @description uiz_stringbox_setKeyHoldingTyping(instanceid,time to activate[0.75],speed sec/char[0.05])
/// @param instanceid
/// @param time to activate[0.75]
/// @param speed sec/char[0.05]
function uiz_stringbox_setKeyHoldingTyping(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.keyHoldingTypingTimer=argument1;
	argument0.keyHoldingTypingSpeed=argument2;




}
