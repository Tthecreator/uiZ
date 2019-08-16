///uiz_updater_step()
//marks that code code specified in the user event 4 should be ran every step.
if uiz_steps=false then{
ds_list_add(obj_uiZ_controller.uiz_steplist,id)
uiz_steps=true;
}
