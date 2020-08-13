var swipicon = argument0;
with(argument1){
    object_explorer=instance_create(0,0,obj_windows31_filemanager)//this is not a uiz object, just a controller object
    window_explorer=uiz_win31_createwindow(obj_uiZ_controller.id,"File Manager",true)//we create the window in this object to keep the window controls working
    object_explorer.window=window_explorer;//give our new object a reference to our window
    with(object_explorer){uiz_win31_openfilemanager()}//handle setup script
}
