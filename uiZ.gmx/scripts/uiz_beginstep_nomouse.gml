///uiz_beginstep_nomouse()
//script called every begin step of an uiz object
/*Function containing important processing steps for uiz object except for mouse processing code.
Needs to be called in the begin step of only a few uiz objects.
*/
fixedthisstep=0
if keepupdating=1 or updatenextstep=1 then{uiz_fixgeneralpos(id)}

