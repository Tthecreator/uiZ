    //calculate the end points in the right order.
    var minold=selpos_dis_min_px_bound;
    var maxold=selpos_dis_max_px_bound;
    var disminold=selpos_dis_min;
    var dismaxold=selpos_dis_max;
    selpos_dis_min=min(selpos_dis,typepos_dis)
    selpos_dis_min_px=min(selpos_dis_px,typepos_dis_px)
    selpos_dis_max=max(selpos_dis,typepos_dis)
    selpos_dis_max_px=max(selpos_dis_px,typepos_dis_px)
    uiz_stringbox_getselbounds();
    var selpos_real=uiz_stringbox_pos_real_from_dis(selpos_dis);
    selpmin=min(selpos_real,typepos_real);
    selpmax=max(selpos_real,typepos_real);
    if selpos_dis_min!=selpos_dis_max then{//check if selection is bigger than 0
    hasselection=true;
    }else{
    /*
        if hasselection then{
        uiz_stringbox_selection_disable();
        }
        //*/
    }
    if disminold!=selpos_dis_min or dismaxold!=selpos_dis_max then{
        if minold=-1 then{//if old selection is not known or has changed
        //sdbm("update point 2");
            uiz_stringbox_fixselection();
        }else{//update old position as well
        //sdbm("update point 1");
            uiz_updater_FixViews_area_selfmarked(min(minold,selpos_dis_min_px_bound),iy,max(maxold,selpos_dis_max_px_bound)-1,ily);
            //minoldtest=minold;
            //maxoldtest=maxold;
        }
    }
