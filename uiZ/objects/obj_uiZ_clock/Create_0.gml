//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
//#exclude
uiz_objinit()
//put init variables here
bigdots=12//v//nubmer of big dots//
smalldots=4//v//nubmer of small dots between big dots//
dotsprite=spr_uiZ_analogclock_dots//p//sprite for dots//
pointersprite=spr_uiZ_analogclock_pointer//p//sprite for the pointers//
pointersize=0.5//v//pointer size//
pointersizetype=fcm//z//pointer size type//
pointercolor=c_white//c//pointer color//
time=-1//v//time//
tm=0

ats=0;
atcs=0;
atm=0;
ath=0;
sec=date_get_second(date_current_datetime());

lastsecond=0;
seconds=true//b//seconds pointer//
minutes=true//b//minutes pointer//
hours=true//b//hours pointer//
secondanimation=uiz_exponential_in//a//seconds animation//
minuteanimation=uiz_zero//a//minute animation//
houranimation=uiz_straight//a//hour animation//

