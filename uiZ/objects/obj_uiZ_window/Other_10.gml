//if live_call() return live_result;
if uiz_cntn(){

uiz_back()


//sdbm("sprite used:",sprite_get_name(bkspr))
if iwidth>bars*(1+button_cross+button_maximize) and iheight>=0 then{
if topbackuse>-1 then{u=topbackuse}

var old_bkspr=bkspr;
var old_bkcol=bkcol;
var old_bkmar=bkmar;
var old_texas=texas;

bkspr=topbar_bkspr;
bkcol=topbar_bkcol;
if sizestatus=2 then{
bkmar=0;
var bkmar_bot=topbar_bkmar;
}else{
bkmar=topbar_bkmar;
var bkmar_bot=0;    
}
texas=topbar_texas;

var old_ix=ix;
var old_iy=iy;
var old_ilx=ilx;
var old_ily=ily;

var old_rx=rx;
var old_ry=ry;
var old_rlx=rlx;
var old_rly=rly;

//bars=uiz_getposy(barsize,barsizevaltype);
if topbarInside then{
    ily=iy-bkmar;
    rx=ix;
    iy-=bars+bkmar;
    ry=iy;
    rlx=ilx;
    rly=ry+bars-bkmar_bot;
}else{
    rly=iy-bkmar_bot;
    ily=iy-bkmar;
    iy=ry+bkmar;
}


if doublemargins=true then{
ix+=leftframemargin
ilx-=rightframemargin
iy+=topframemargin
ily-=bottomframemargin

rx+=leftframemargin
rlx-=rightframemargin
ry+=topframemargin
rly-=bottomframemargin
}

uiz_back()

bkspr=old_bkspr;
bkcol=old_bkcol;
bkmar=old_bkmar;
texas=old_texas;







//draw text

if font>-1 then{draw_set_font(font)}
draw_set_color(windowtextcolor)
draw_set_alpha(alpha)
draw_set_valign(valign)
draw_set_halign(halign)
draw_text(ix+(ilx-ix)*(halign/2),iy+(ily-iy)*(valign/2),string_hash_to_newline(uiz_getText_contained(windowtext,width-bars*(1+button_cross+button_maximize+button_minimize))))

if button_cross then{uiz_draw_spriteButton_state(ilx-bars,iy,ilx,ily-bkmar_bot,button_cross_color_normal,button_cross_color_over,button_cross_color_in,button_cross_sprite,alpha,button_cross_state)}
if button_maximize then{uiz_draw_spriteButton_state(ilx-bars*(1+button_cross),iy,ilx-bars*(button_cross),ily-bkmar_bot,button_maximize_color_normal,button_maximize_color_over,button_maximize_color_in,button_maximize_sprite,alpha,button_maximize_state)}
if button_minimize then{uiz_draw_spriteButton_state(ilx-bars*(1+button_cross+button_maximize),iy,ilx-bars*(button_cross+button_maximize),ily-bkmar_bot,button_minimize_color_normal,button_minimize_color_over,button_minimize_color_in,button_minimize_sprite,alpha,button_minimize_state)}

//draw custom buttons on the left
var leftButtons = ds_list_size(custom_buttons_left_sprite);
for(var i=0;i<leftButtons;++i){
    uiz_draw_spriteButton_state(ix+bars*i,iy,ix+bars*(i+1),ily,custom_buttons_left_color_normal[|i],custom_buttons_left_color_over[|i],custom_buttons_left_color_in[|i],custom_buttons_left_sprite[|i],1,custom_buttons_left_state[|i])
}

//draw custom buttons on the right
var rightButtons = ds_list_size(custom_buttons_right_sprite);
var baseX = ilx-bars*(button_cross+button_maximize+button_minimize);
for(var i=0;i<rightButtons;++i){
    uiz_draw_spriteButton_state(baseX-bars*(i+1),iy,baseX-bars*(i),ily,custom_buttons_right_color_normal[|i],custom_buttons_right_color_over[|i],custom_buttons_right_color_in[|i],custom_buttons_right_sprite[|i],1,custom_buttons_right_state[|i])
}

ix=old_ix;
iy=old_iy;
ilx=old_ilx;
ily=old_ily;

rx=old_rx;
ry=old_ry;
rlx=old_rlx;
rly=old_rly;
}
//*/
uiz_containend()
}

/* */
/*  */
