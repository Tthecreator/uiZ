///uiz_spriteanimationbutton_setvalue(instance id,value)
/*
Takes a spriteanimationbutton and sets the value of that button.
*/

with(argument0){
    if value!=argument1 then{
        updated=true;
        value=!value;
        uiz_updater_step();
        update=true;
    }
}
