if kmouseover=uiz_nomouse then{
    if onitem>=0 then{
        if onitem>=0 and count>0 then{
            decount_counting++;
            decount[onitem] = count;
            uiz_updater_step();
        }
        onitem=-1;
        
    }
}else{
    if onitem_old=onitem then{
    //change mouse
    uiz_functionbar_updateitem(onitem);
    }else{
    onitem_old=onitem
    }
}

