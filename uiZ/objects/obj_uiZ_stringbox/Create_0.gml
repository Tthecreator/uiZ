//#define uiZ
//#sprite images
//#spritenum 24
//#objectversion 1.0
uiz_objinit()
value=""//s//initial value//
textcolor=c_black//c//text color//
selectbackcolor=$efd8ba//c//selection background color//
selecttextcolor=c_black//c//selection text color//
cursorcolor=c_black//c//typing cursor color//

font=-1//f//font//
typeanimationin=uiz_exponential_in//a//type animation in//
typeanimationout=uiz_exponential_in//a//type animation out//
countspeed=1//v//type animation time//
maxlength=0//v//max length//
mouseSelectionMovementSpeed=0.05//v//mouse selection movement (sec per char)//
keyHoldingTypingSpeed=0.05//v//typing speed when holding any key (sec per char)//
keyHoldingTypingTimer=0.75//v//time in sec. between holding down a key and rapid typing mode//
messagetext="Enter a value"//s//message text on mobile//
hasbackground=true//b//enable background//
cursorwidth=2//v//width of the typing cursor//
acceptOnlyNumbers=false//b//accept only digits and a single .//
acceptOnlyIntegers=false//b//don't accept floating point numbers//
acceptOnlyPositive=true//b//don't accept negative point numbers//
minvalue=0//v//minimum numerical value//
minvalue_enabled=false//b//enable minimum numerical value//
maxvalue=0//v//maximum numerical value//
maxvalue_enabled=false//b//enable maximum numerical value//
numberCounter_enable=false//b//enable numberical up and down buttons//
numberCounter_interval=1//v//numberical up/down button step size//
numberCounter_rapidTimer=0.75//v//numberical button hold time//
numberCounter_rapidSpeed=0.05//v//numberical button rapid increase interval//
numberCounter_width=0.1//b//numberical up and down button width//
numberCounter_widthType=dp//b//numberical up and down button width type//

numberCounter_minButtonSprite=spr_uiZ_min//s//subtract button sprite//
numberCounter_minButtonColor=c_white//c//subtract button normal color//
numberCounter_minButtonOnColor=c_white//c//subtract button mouse over color//
numberCounter_minButtonOverColor=c_white//c//subtract button mouse in color//
numberCounter_minButtonAlpha=c_white//c//subtract button alpha//

numberCounter_maxButtonSprite=spr_uiZ_plus//s//add button sprite//
numberCounter_maxButtonColor=c_white//c//add button normal color//
numberCounter_maxButtonOnColor=c_white//c//add button mouse over color//
numberCounter_maxButtonOverColor=c_white//c//add button mouse in color//
numberCounter_maxButtonAlpha=c_white//c//add button alpha//

texturescript=uiz_back_circlestitch//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_border1//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=8//v//margin normal//
sprite_texturemode=uiz_texturemode_fill//t//texturemode normal
border_texturemode=-1//t//texturemode border//

sprite_over=spr_uiZ_border1_over//p//sprite over//
color_over=-1//c//color over//
margin_over=-1//v//margin over//

sprite_in=spr_uiZ_border1_in//p//sprite in//
color_in=-1//c//color in//
margin_in=-1//v//margin in//

sprite_out=spr_uiZ_border1_in//p//sprite out//
color_out=-1//c//color out//
margin_out=-1//v//margin out//

///deprecated settings
margin=4//v//margin//
//accountspeed=0.08
accountspeed=.5//v//rapid mode count time//
accbetween=0.000001//v//rapid mode speed//

///stringboxspecific technical stuff
typing=false;
str_real="";//the full string
uiz_stringbox_str_real_init();
ilx_minwidth = uiz_getposx_self(numberCounter_width,numberCounter_widthType);
if numberCounter_enable then{
i_ilx = ilx-ilx_minwidth;//internal ilx
}else{
i_ilx = ilx;
}
selfmarked_text = false;
button_state_min = 0;//min button state
button_state_max = 0;//max button state
button_state_count = 0;
button_state_max_count = 0;
button_state_max_count_rapid = 0;
sel_beg_fix = "";//a hacky bugfix variable
updated = false;
update = false;


