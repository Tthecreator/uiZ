///INTERNAL UIZ FUNCTION DO NOT USE
if live_call() return live_result;
//sdbm("testing",selectedx_old,"x_o>=0",selectedy_old,"y_o>=0",cur_nwat_old,"nw_o<=w",width,cur_nhat_old,"nh_o<=h",height,cur_wat_old,"w_o>=0",cur_hat_old,"h_o>=0",updatemode)
if selectedx_old>=0 and (selectedy_old>=0 or selectionmode==3) and cur_nwat_old<=width and cur_nhat_old<=height and cur_wat_old>=0 and cur_nwat_old>=0 then{
//sdbm("almost updating",updatemode)
     switch(updatemode){
        case 1:
//sdbm("updating mark",selectedx_old,cur_wat_old+rx,cur_hat_old+yh,cur_nwat_old+rx,cur_nhat_old+yh)
            if selectedx_old < ds_list_size(mainlist)-1 then{
                uiz_updater_FixViews_area_selfmarked(cur_wat_old+rx,max(yh,cur_hat_old+yh),cur_nwat_old+rx-1,min(rly,cur_nhat_old+yh));//the new view
            }else{
                uiz_updater_FixViews_area_selfmarked(cur_wat_old+rx,max(yh,cur_hat_old+yh),cur_nwat_old+rx,min(rly,cur_nhat_old+yh));//the new view
            }
        break;
        case 2:
            uiz_updater_FixViews_area_selfmarked(rx,max(yh,cur_hat_old+yh),rlx-scrollbarw,min(rly,cur_nhat_old+yh));//the new view
        break;
        case 3:
            if selectedx_old < ds_list_size(mainlist)-1 then{
                uiz_updater_FixViews_area_selfmarked(cur_wat_old+rx,yh,cur_nwat_old+rx-1,rly);//the new view
            }else{
                uiz_updater_FixViews_area_selfmarked(cur_wat_old+rx,yh,cur_nwat_old+rx,rly);//the new view
            }
        break;
     }
 }
