/// @description dbm(var1,var2)
/// @param var1
/// @param var2
function dbm() {
	/*
	Stands for "debug message" and gives a popup window showing any values given to it.
	Multiple arguments of any type can be passes to this script and every argument will appear on a new line inside the message.
	For debugging purposes only! 
	*/
	var str=""
	for(var i=0;i<argument_count;i++){
	str=str+string(argument[i])+"#"
	}
	show_message(str)



}
