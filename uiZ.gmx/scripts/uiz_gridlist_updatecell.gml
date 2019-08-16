///INTERNAL UIZ FUNCTION DO NOT USE
if selectedx>=0 and selectedy>=0 and cur_nwat<=width and cur_nhat<=height and cur_wat>=0 and cur_nwat>=0 then{
    switch(updatemode){
    case 1:
        uiz_updater_FixViews_area_selfmarked(cur_wat+rx,max(yh,cur_hat+yh),cur_nwat+rx,min(rly,cur_nhat+yh));//the new view
    break;
    case 2:
        uiz_updater_FixViews_area_selfmarked(rx,max(yh,cur_hat+yh),rlx-scrollbarw,min(rly,cur_nhat+yh));//the new view
    break;
    case 3:
        uiz_updater_FixViews_area_selfmarked(cur_wat+rx,yh,cur_nwat+rx,rly);//the new view
    break;
    }
}
