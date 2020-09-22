/// @description uiz_stringbox_setAcceptNumbersOnly(instanceid,acceptOnlyNumbers[false],acceptOnlyIntegers[false],acceptOnlyPositive[true])
/// @param instanceid
/// @param acceptOnlyNumbers[false]
/// @param acceptOnlyIntegers[false]
/// @param acceptOnlyPositive[true]
function uiz_stringbox_setAcceptNumbersOnly(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.acceptOnlyNumbers=argument1;
	argument0.acceptOnlyIntegers=argument2;
	argument0.acceptOnlyPositive=argument3;



}
