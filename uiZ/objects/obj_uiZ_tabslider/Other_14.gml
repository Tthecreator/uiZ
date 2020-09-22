with (obj_uiZ_tabslider) {
//doanimation = false;
//if !ds_exists(spacinglist, ds_type_list) and ds_list_size(spacinglist) > 0 then {
    //getlist = true;
//} else {
    if (oldvalue != value or updated or forceinanimation = true or(linearinter != 0)) and ds_exists(tablist, ds_type_list) and ds_list_size(spacinglist) > max(value, oldvalue) then {
    //updated=false;
    if linearinter*2048!=0 then{
    updated=false;
    }

            if linearinter<1 then {
            //sdbm("animating",animationtime,uiz_sc(animationtime))
                linearinter += uiz_sc(animationtime)// * dir
                uiz_tabslider_handleanimation()
            }else{
                uiz_updater_unstep();
                if goback {
                    value=oldvalue;
                    goback=false;
                }
            }

    }

}
