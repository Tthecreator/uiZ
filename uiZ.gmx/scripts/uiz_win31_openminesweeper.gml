//add background
var f=window;
back=uiz_c(obj_uiZ_sprite);
uiz_setparent(back,f)
back.posinframex=uiz_fill;
back.posinframey=uiz_fill;
back.sprite_index=spr_uiZ_win31_mineback;
uiz_fixgeneralpos(back)

//add button
//size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
button=uiz_c(obj_uiZ_easybutton)
uiz_setparent(button,f)
button.depth=-3;//put it above the background
button.posinframex=uiz_center;
button.posinframey=fc;
button.posvaly=15/195;
button.posvalwtype=fc;
button.posvalw=26/152;
button.posvalhtype=fcx;//use the fc values for the x
button.posvalh=26/152;
button.sprite=spr_uiZ_win31_happybutton
uiz_fixgeneralpos(button)

//add scorecounter counter
//size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
scorecounter=uiz_c(obj_uiZ_spritecounter)
uiz_setparent(scorecounter,f)
scorecounter.depth=-3;//put it above the background
scorecounter.posinframex=fc;
scorecounter.posvalx=17/152;
scorecounter.posinframey=fc;
scorecounter.posvaly=16/195;
scorecounter.posvalwtype=fc;
scorecounter.posvalw=39/152;
scorecounter.posvalhtype=fc;
scorecounter.posvalh=22/195;
scorecounter.sprite=spr_uiZ_win31_counter
uiz_fixgeneralpos(scorecounter)


//add timecounter
//size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
timecounter=uiz_c(obj_uiZ_spritecounter)
uiz_setparent(timecounter,f)
timecounter.depth=-3;//put it above the background
timecounter.posinframex=fc;
timecounter.posvalx=94/152;
timecounter.posinframey=fc;
timecounter.posvaly=16/195;
timecounter.posvalwtype=fc;
timecounter.posvalw=39/152;
timecounter.posvalhtype=fc;
timecounter.posvalh=22/195;
timecounter.sprite=spr_uiZ_win31_counter
uiz_fixgeneralpos(timecounter)


//add minefield
//size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
minefield=uiz_c(obj_uiZ_minesweeper)
uiz_setparent(minefield,f)
minefield.depth=-4;//put it above the background, and other objects (may there be any problems)
minefield.posinframex=fc;
minefield.posvalx=12/152;
minefield.posinframey=fc;
minefield.posvaly=55/195;
minefield.posvalwtype=fc;
minefield.posvalw=127/152;
minefield.posvalhtype=fc;
minefield.posvalh=127/195;
uiz_fixgeneralpos(minefield)
