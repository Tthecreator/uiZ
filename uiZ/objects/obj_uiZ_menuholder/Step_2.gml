if addy>0 and scrolledlast=0 then{
snapbackanimationcount+=snapbackanimationspeed
addy=(1-uiz_animation_getFunction(snapbackanimationcount,snapbackanimation))*lastuppoint
uiz_fixChildren(id,1)
}

if addy<-menulastpx and scrolledlast=0 then{
//dbm(addy,scrolledlast)
snapbackanimationcount+=snapbackanimationspeed
addy=-menulastpx+(1-uiz_animation_getFunction(snapbackanimationcount,snapbackanimation))*(lastuppoint+menulastpx)
uiz_fixChildren(id,1)
}


if scrolledlast=1 then{scrolledlast=0
snapbackanimationcount=0
lastuppoint=addy
}

