///uiz_win31_filemanager_selectFolder(treelist id, xmlHandle)
with(obj_windows31_filemanager){
    var treelist = argument0;
    var handle = argument1;
        
    var namelist=uiz_xml_makelistfromattributes_nonsub_withEmptyTags_at(folders,handle,"name")//generate new list
    var sizelist=uiz_xml_makelistfromattributes_nonsub_withEmptyTags_at(folders,handle,"size")//generate new list
    var datelist=uiz_xml_makelistfromattributes_nonsub_withEmptyTags_at(folders,handle,"dat")//generate new list
    
    var lsz = min(ds_list_size(namelist),ds_list_size(sizelist),ds_list_size(datelist));
    ds_grid_resize(fileview.maingrid, 3, lsz);
    for(var i=0; i<lsz; ++i){
        fileview.maingrid[# 0, i] = namelist[| i];
        fileview.maingrid[# 1, i] = sizelist[| i];
        fileview.maingrid[# 2, i] = datelist[| i];
    }
    
    //uiz_updater_FixViews_with(fileview);
    uiz_fixgeneralpos(fileview);
    
    ds_list_destroy(namelist)//delete list
    ds_list_destroy(sizelist)//delete list
    ds_list_destroy(datelist)//delete list
    
}

