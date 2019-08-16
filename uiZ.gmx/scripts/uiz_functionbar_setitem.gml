///uiz_functionbar_setitem(functionbarid,itemid,text,sprite,clickedscript,menuscript,color,group,tab,enabled)
//only the first 5 arguments are required.
//argument0: functionbarid, the objectid refering to a functionbar
//argument1: the id of the item that you want to change.
//argument2: the text that the functionbaritem should have.
//argument3: the sprite that the functionbar should have. the sprite doesn't have to be a specific size, but something square will give the best results.
//argument4: this should be a script you created, whenever you click on the item, this script will be executed. set to 0 for no script
//argument5: this should be a script you created, whenever you click on the little arrow below the item, this script will be executed. set to 0 for no script
//argument6: this will set the tone(color) of the itembuttons
with(argument[0]){
text[argument[1]]=argument[2]
sprite[argument[1]]=argument[3]
clicked[argument[1]]=argument[4]
menu[argument[1]]=argument[5]
color[argument[1]]=argument[6]
//if argument_count>7 then{group[items]=argument[7]}
//if argument_count>8 then{tab[items]=argument[8]}
//if argument_count>8 then{enabled[items]=argument[8]}
}
