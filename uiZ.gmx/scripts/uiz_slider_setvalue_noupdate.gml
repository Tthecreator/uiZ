///uiz_slider_setvalue_noupdate(id,value from 0 to 1)
/*
Set the value of the slider using an animation. This will not generate an updated or update variable. A consequent animation may still trigger an update.
*/
with(argument0){
    fromvalue=invalue
    value=argument1
    //updated=1;
    //update=1;
    uiz_updater_step();
}
