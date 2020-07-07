#define UIZ_FONT
//you can change me.
//dp_15 means a font with a height of 0.15 dp = 0.15 inch = 3,81 mm;
//px_10 means a font that is 10 pixels high;
if global.uiz_fonts_loaded=false then{
    global.uiz_fonts_loaded=true
    var multiplier=0.5;//this multiplier suits the m+ 2p font.
    sizes[7]=70;fonts[7]=uiz_fnt_70;
    sizes[6]=50;fonts[6]=uiz_fnt_50;
    sizes[5]=25;fonts[5]=uiz_fnt_25;
    sizes[4]=20;fonts[4]=uiz_fnt_20;
    sizes[3]=10;fonts[3]=uiz_fnt_10;
    sizes[2]=8;fonts[2]=uiz_fnt_8;
    sizes[1]=5;fonts[1]=uiz_fnt_5;
    sizes[0]=2;fonts[0]=uiz_fnt_2;   
    //load dpi
    globalvar uiz_dp;
    uiz_dp=uiz_dpi_getdpi();
    
    //recalculate font sizes based on actual pixel size
    for(var i=0;i<array_length_1d(fonts);++i){
        draw_set_font(fonts[i]);
        sizes[i] = string_height("{|}IJGlg");
    }
    
    //load dp based fonts
    globalvar uiz_fnt_dp_15, uiz_fnt_dp_20, uiz_fnt_dp_30, uiz_fnt_dp_50;
//    uiz_fnt_dp_15 = uiz_font_load_dp(0.15,multiplier);
    uiz_fnt_dp_20 = uiz_font_load_dp(0.20,multiplier);
//    uiz_fnt_dp_30 = uiz_font_load_dp(0.30,multiplier);
//    uiz_fnt_dp_50 = uiz_font_load_dp(0.50,multiplier);
    
    //set pixel based fonts
    globalvar uiz_fnt_px_2, uiz_fnt_px_5, uiz_fnt_px_8, uiz_fnt_px_10, uiz_fnt_px_20, uiz_fnt_px_50, uiz_fnt_px_70; //use of px fonts is discouraged, since it won't scale properly between 1080p and 4k screens. Using pixel values to build your ui is discouraged in general.
    uiz_fnt_px_2=uiz_fnt_2;
    uiz_fnt_px_5=uiz_fnt_5;
    uiz_fnt_px_8=uiz_fnt_8;
    uiz_fnt_px_10=uiz_fnt_10;
    uiz_fnt_px_20=uiz_fnt_20;
    uiz_fnt_px_50=uiz_fnt_50;
    uiz_fnt_px_70=uiz_fnt_70;
    
    draw_set_font(uiz_fnt_dp_20);
}

#define UIZ_FONT_IMPORT
///UIZ_FONT_IMPORT(dp, multiplier)
sdbm("[uiZ|Warning] generating new font page, performance issues might arise.")
//return font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",argument0*uiz_dp*argument1,false,false,32,128);//English only
return font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",argument0*uiz_dp*argument1,false,false,32,255);//general european

#define uiz_font_load_dp
///uiz_font_load_dp(dp_size,multiplier)
//var sz=0.15*uiz_dp*multiplier
var sz=argument0*uiz_dp
var diff=999999999999;
var hasdiff=-1;
//get pixel font that matches this dpi the most
for(var i=0;i<array_length_1d(sizes);i++){
    var curdiff=abs(sz-sizes[i]);
    if curdiff<diff then{diff=curdiff;hasdiff=i;}
}
var fnt=fonts[hasdiff];

//check if font matches enough
if hasdiff>-1 and diff<15 and is_real(fnt) and font_exists(fnt) then{
    sdbm("[uiZ|Info]Now using font: ",fnt," of size: ",sizes[hasdiff]," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the system unaware dpi is: ",display_get_dpi_y());
    //uiz_fnt_dp_15=fnt;
    return fnt;
}else{
    var fnt = UIZ_FONT_IMPORT(argument0,argument1)
    draw_set_font(fnt);
    sdbm("[uiZ|Info]Now using font: ",fnt," of size: ",string_height("|gjlp")," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the system unaware dpi is: ",display_get_dpi_y());
    return fnt;
}