///uiz_functionbar_additem(functionbarid,text,sprite,clickedscript,menuscript,color,group,tab,enabled)
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
//if argument_count>6 then{group[items]=argument[6]}else{group[items]=""}
//if argument_count>7 then{tab[items]=argument[7]}else{tab[items]=0}
//if argument_count>7 then{enabled[items]=argument[7]}else{enabled[items]=1}
items++
}

//argument7 (obsolete): you can leave this empty. this will put items in tabs, you will need to have a tabbar enabled, else set this to zero.
//argument7 (obsolete): you can leave this empty. this will group items into segment whithin one tab.
//argument8 (obsolete): you can leave this empty. this will enable, disable, or gray out an item. 0=diabled, 1=grayed out, 2=enabled

