if (oldvalue!=value) then{
if value=true then{
linearvalue+=uiz_sc(animationintime)
intervalue=uiz_animation_getFunction(linearvalue,animationin)
img=round(endframe*intervalue)
}else{
linearvalue+=uiz_sc(animationouttime)
intervalue=uiz_animation_getFunction(linearvalue,animationout)
img=endframe+round((sprite_get_number(sprite)-endframe)*intervalue)
}
if linearvalue>=1 then{
linearvalue=0;
oldvalue=value;
invervalue=0;
if value=true then{
img=endframe;
}else{
img=0;
}
uiz_updater_unstep();
update=false;
}

}else{
//oldvalue=value
if (linearvalue>0 and linearvalue<1) then{
update=true;
if value=false then{
//move back
linearvalue-=uiz_sc(animationintime)
intervalue=uiz_animation_getFunction(linearvalue,animationin)
img=round(endframe*intervalue)
}else{
//move forward
linearvalue-=uiz_sc(animationouttime)
intervalue=uiz_animation_getFunction(linearvalue,animationout)
img=endframe+round((sprite_get_number(sprite)-endframe)*intervalue)
}
if linearvalue<0 then{linearvalue=0;
uiz_updater_unstep();
update=false;
}
}
}

uiz_updater_FixViews();


