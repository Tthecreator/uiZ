if ds_exists(tablist, ds_type_list) and ds_list_size(tablist) = ds_list_size(spacinglist) then {


    lastMouseItem=mouseItem;
    lastMouseOv=mouseOv;
    lastMouseV=mouseV;
    
    
    mouseItem=-1;

    var sz = ds_list_size(tablist)
    mouseV = rx;
    mouseOv=0;
    
    uiz_tabslider_getMouseItem();

    if mouseItem!=lastMouseItem then{
    //sdbm("upd slids nw");
        if mouseItem!=-1 then{
            //sdbm("upd slids nw");
            uiz_updater_FixViews_area_selfmarked(mouseOv,ry,mouseV,rly);
        }
        if lastMouseItem!=-1 then{
            //sdbm("upd slids ow");
            uiz_updater_FixViews_area_selfmarked(lastMouseOv,ry,lastMouseV,rly);
        }
        
    }

    if kmouseover=4 && mouseItem!=value && mouseItem!=-1 then{
        //sdbm("setting mouseitem",mouseOv);
        oldTabPos=newpos;
        oldTabWidth=newwidth;
        newTabPos=mouseOv;
        linearinter=0;
        //sdbm("setting item",mouseItem);
        value=mouseItem;
        updated=true;
        uiz_updater_step();
        }
    

}

