if decount_counting>0 or count<1 then{
if count<1 then{
count = min(1, count + uiz_sc(countspeed));
uiz_functionbar_updateitem(onitem);
}
if decount_counting>0 then{
decount_counting = 0;
for(var i=0;i<items;i++){
    ++decount_counting;
    if decount[i]>0 then{
        decount[i] = max(0, decount[i] - uiz_sc(countspeed));
        uiz_functionbar_updateitem(i);
        if decount[i]<=0 then{decount_counting--;}
    }
}
}
}else{
uiz_updater_unstep()
}

