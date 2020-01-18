///uiz_button_settext(instanceid,text[""],textcolor[c_black],font[-1])
//#wiki https://git.tthecreator.win/TtheCreator/uiz/wikis/button
gml_pragma("forceinline");
switch(argument_count){
case 4: default:
    argument[0].font=argument[3];
case 3:
    argument[0].textcolor=argument[2];
case 2:
    argument[0].text=argument[1];
break;
case 1: case 0:
    sdbm("[uiZ|ERROR] invalid amount of arguments for uiz_button_settext")
    show_error("[uiZ|ERROR] invalid amount of arguments for uiz_button_settext",false);
}



