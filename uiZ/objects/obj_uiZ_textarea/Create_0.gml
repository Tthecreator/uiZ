//#define uiZ
//#sprite images
//#spritenum 24
//#objectversion 1.0
uiz_objinit()
font=-1//f//font//
textcolor=c_black//c//text color//
selecttextcolor=c_white//c//selection text color//
selectbackcolor=12820740//c//selection background color//

scrollbarsize=0.2//v//scrollbarsize//
scrollbarsizetype=dp//z//scrollbarsizetype//
scrollbarsprite=spr_uiZ_scrollbar//p//sprite//
scrollbarcolor=c_white//c//color//
scrollbartexturemode=uiz_texturemode_fill_edgeless//t//texturemode//
scrollspeed=0.5//v//scrollspeed in dp//
scrollbarAnimation=uiz_smoothstep//a//scrollbar animation//
scrollbarAnimationTime=0.2//v//scrollbar animation time//


accountspeed=.5//v//rapid mode count time//
accbetween=.02//v//rapid mode speed//

typeanimationin=uiz_exponential_in//a//type animation in//
typeanimationout=uiz_exponential_in//a//type animation out//
typeAnimationTime=1//v//type animation time//
typecolor=c_black//c//type indicater color//
cursorwidth=3//c//type indicater thickness//

//clippedLineEnableFactor=0.5;//v//clipped line factor//

hasbackground=true;
texturescript=uiz_back_circlestitch//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_border1//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=5//v//margin normal//
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

textList = ds_list_create();
fontHeight=string_height(string_hash_to_newline("{|}"));

doscroll=false;
scroll=uiz_drawscrollbar_init();
scrolllines=0;
scblwidth=0;
listFromPx=0;


//isTyping and hasSelection should never be true at the same time. If that's the case it should be considered a bug.
isTyping=false;
hasSelection=false;

//hasMousePressed=false;
redoSelection=false;

selection1Line=-1;
selection1X=-1;
selection1Char=-1;

selection2Line=-1;
selection2X=-1;
selection2Char=-1;

selectionMinLine=selection1Line;
selectionMinX=selection1X;
selectionMinChar=selection1Char;

selectionMaxLine=selection2Line;
selectionMaxX=selection2X;
selectionMaxChar=selection2Char;

last_selectionMinLine=selectionMinLine;
last_selectionMinChar=selectionMinChar;

last_selectionMaxLine=selectionMaxLine;
last_selectionMaxChar=selectionMaxChar;

last_moveVerticalX = -1;

lastReworkAvWidth = -1;

last_isScrollbarSelected = false;

addToNextLineCheck_sel1 = true;
addToNextLineCheck_sel2 = true;

typeanimcount=0;
account=0;

whatsign="";
changesign = false;
lastkeyboard_key = keyboard_key;

