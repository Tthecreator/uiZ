/// @description uiz_functionbar_additem(functionbarid,text,sprite,clickedscript,menuscript,color)
/// @param functionbarid
/// @param text
/// @param sprite
/// @param clickedscript
/// @param menuscript
/// @param color
function uiz_functionbar_additem() {
	//only the first 5 arguments are required.
	//argument0: functionbarid, the objectid refering to a functionbar
	//argument1: the text that the functionbaritem should have.
	//argument2: the sprite that the functionbar should have. the sprite doesn't have to be a specific size, but something square will give the best results.
	//argument3: this should be a script you created, whenever you click on the item, this script will be executed. set to 0 for no script
	//argument4: this should be a script you created, whenever you click on the little arrow below the item, this script will be executed. set to 0 for no script
	//argument5: this will set the tone(color) of the itembuttons
	with(argument[0]){
	text[items]=argument[1]
	sprite[items]=argument[2]
	clicked[items]=argument[3]
	menu[items]=argument[4]
	color[items]=argument[5]
	decount[items]=0;
	items++
	return items-1;
	}



}
