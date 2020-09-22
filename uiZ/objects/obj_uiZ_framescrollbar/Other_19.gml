//uiz_fixframescrollbarpos(id);
//on frame scroll update
if instance_exists(frame){
    if horizontal then{
        scrolllines=abs(frame.mscrollbarx);
        uiz_drawscrollbar_setValue(uscroll,abs(uiz_drawscrollbar_getValue(frame.uscrollx)));
        
    }else{
        scrolllines=abs(frame.mscrollbary);
        uiz_drawscrollbar_setValue(uscroll,abs(uiz_drawscrollbar_getValue(frame.uscrolly)));
    }
    uiz_updater_FixViews();
}

