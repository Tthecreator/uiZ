//#define uiZ
//#sprite images
//#spritenum 8
//#objectversion 1.0
uiz_objinit()
mainlist=-1;
sizelist=-1;
maingrid=-1;

uselist=false;

initialized=false;
spritecount=0;

scrollbarwidth=0.15//v//scrollbar width//
scrollbarwidthtype=dp//z//scrollbar width type//
scrollbarw=0;
scrollbarsprite=spr_uiZ_scrollbar_16//p//scrollbar sprite//
scrollbarcolor=c_white//c//scrollbar color//
scrollbarbacktexmode=uiz_texturemode_fill//t//scrollbar background texture mode//
scrollbarAnimation=uiz_smoothstep//a//scrollbar animation//
scrollbarAnimationTime=0.3//v//scrollbar animation time//
scroll=0;
scroll_start=0;
scroll_old=0;
scrolling=false;
scrollspeed=1//v//scroll speed//
enablescroll=true//b//enable scroll//
doscroll=false
scroll_intern=uiz_drawscrollbar_init();

orientation=0//b//orientation
destroylists=true//b//destroy listlist's lists//
barsize=0.2//v//bar size//
barsizetype=dp//z//bar size type//
textmargin=3//v//text pixel margin//
imagescale=0.9//v//image scaling//
snapmouse=-1;
snapmousepos=-1;
snapmousesize=-1;
snapmouseothersize=-1;
//check out selectionmode for more info
updatemode=0;
//updatetopbar=false;

minbarsize=0.2//v//minimum bar segment width//
minbarsizetype=dp//z//minimum bar segment width type//
mousemargin=5//v//mouse bar dividor margin//
//listheight=20;
//listheighttype=px;
listheightmargin=2//v//pixel cell margin//
resiz=1;

drawdivider=true//b//draw divider//
dividercolor=c_black//c//divider color//
enabledivider=true//b//enable divider//
textcolor=c_black//c//text color//
normalcolor=c_white//c//normal color//
normalalpha=1//v//normal alpha//
selectiononcolor=c_ltgray//c//selection color//
selectiononalpha=1//v//selection alpha//
selectionincolor=c_gray//c//selection click color//
selectioninalpha=1//v//selection click alpha//

font=-1//f//font//

selectionmode=2//v//selection mode//
//selectionmode 0: no selection
//selectionmode 1: single cell
//selectionmode 2: single row
//selectionmode 3: single column
keepselection=true//b//keepselection//
selectedx=-1
selectedy=-1
selectedx_old=-1
selectedy_old=-1
clickedx=-1
clickedy=-1
//old coordinates
cur_wat=-1;
cur_nwat=-1;
cur_hat=-1;
cur_nhat=-1;

cur_wat_old=cur_wat;
cur_nwat_old=cur_nwat;
cur_hat_old=cur_hat;
cur_nhat_old=cur_nhat;

updateNextSnap = false;

h=0;
yh=0;
scrolling=false;

hasbackground=false//b//enable main background//
texturescript=uiz_back_square//i//texturescript//

texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_border1//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=0//v//margin normal//
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

topbar_texturescript=uiz_back_square//i//top texturescript//
topbar_texturescript_over=-1//i//top texturescript over//
topbar_texturescript_in=-1//i//top texturescript in//
topbar_texturescript_out=-1//i//top texturescript out//

topbar_sprite_normal=spr_uiZ_border1//p//top sprite normal//
topbar_color_normal=c_gray//c//top color normal//
topbar_margin_normal=0//v//top margin normal//
topbar_sprite_texturemode=uiz_texturemode_fill//t//top texturemode normal
topbar_border_texturemode=-1//t//top texturemode border//

topbar_sprite_over=spr_uiZ_border1_over//p//top sprite over//
topbar_color_over=-1//c//top color over//
topbar_margin_over=-1//v//top margin over//

topbar_sprite_in=spr_uiZ_border1_in//p//top sprite in//
topbar_color_in=-1//c//top color in//
topbar_margin_in=-1//v//top margin in//

topbar_sprite_out=spr_uiZ_border1_in//p//top sprite out//
topbar_color_out=-1//c//top color out//
topbar_margin_out=-1//v//top margin out//


