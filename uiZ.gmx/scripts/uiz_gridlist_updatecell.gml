///INTERNAL UIZ FUNCTION DO NOT USE
if live_call() return live_result;
if selectedx>=0 and (selectedy>=0 or selectionmode==3) and cur_nwat<=width and cur_nhat<=height and cur_wat>=0 and cur_nwat>=0 then{
    switch(updatemode){
    case 1:
        if selectedx < ds_list_size(mainlist)-1 then{
            uiz_updater_FixViews_area_selfmarked(cur_wat+rx,max(yh,cur_hat+yh),cur_nwat+rx-1,min(rly,cur_nhat+yh));//the new view
        }else{
            uiz_updater_FixViews_area_selfmarked(cur_wat+rx,max(yh,cur_hat+yh),cur_nwat+rx,min(rly,cur_nhat+yh));//the new view
        }
    break;
    case 2:
        uiz_updater_FixViews_area_selfmarked(rx,max(yh,cur_hat+yh),rlx-scrollbarw,min(rly,cur_nhat+yh));//the new view
    break;
    case 3:
        if selectedx < ds_list_size(mainlist)-1 then{
            uiz_updater_FixViews_area_selfmarked(cur_wat+rx,yh,cur_nwat+rx-1,rly);//the new view
        }else{
            uiz_updater_FixViews_area_selfmarked(cur_wat+rx,yh,cur_nwat+rx,rly);//the new view
        }
    break;
    }
}
