switch(kmouseover){//kmouseover is the variable that holds the current state of the mouse.
    case uiz_nomouse:
        sdbm("uiz_nomouse");//sdbm is the function used to "Show a DeBug Message". It outputs to the CompileForm.
    break;
    case uiz_mouseover:
        sdbm("uiz_mouseover");
    break;
    case uiz_mouseclick://when the user presses your object, first uiz_mousepressed will be activated, in the next step uiz_mouseclick will be activated and in the final step when the mouse releases uiz_mousereleased will be activated..
        sdbm("uiz_mouseclick");
    break;
    case uiz_mousepressed:
        sdbm("uiz_mousepressed");
    break;
    case uiz_mousereleased:
        sdbm("uiz_mousereleased");
    break;
}

