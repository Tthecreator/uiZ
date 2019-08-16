#define UIZ_FONT
//change me.
//dp_15 means a font with a height of 0.15 dp;
//px_10 means a font that is 10 pixels high;
var multiplier=1;//this multiplier suits the m+ 2p font.
sizes[6]=70;fonts[6]=uiz_fnt_70;
sizes[5]=50;fonts[5]=uiz_fnt_50;
sizes[4]=20;fonts[4]=uiz_fnt_20;
sizes[3]=10;fonts[3]=uiz_fnt_10;
sizes[2]=8;fonts[2]=uiz_fnt_8;
sizes[1]=5;fonts[1]=uiz_fnt_5;
sizes[0]=2;fonts[0]=uiz_fnt_2;
globalvar uiz_fnt_dp_15;

//load dpi
globalvar uiz_dp;

uiz_dp=uiz_dpi_getdpi();

var sz=0.10*uiz_dp*multiplier
var diff=999999999999;
var hasdiff=-1;
for(var i=0;i<array_length_1d(sizes);i++){
var curdiff=abs(sz-sizes[i]);
if curdiff<diff then{diff=curdiff;hasdiff=i;}
}
var fnt=fonts[hasdiff]
if hasdiff>-1 and diff<15 and is_real(fnt) and font_exists(fnt) then{
sdbm("[uiZ|info]Now using font: ",fnt," of size: ",sizes[hasdiff]," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the unaware dpi is: ",display_get_dpi_y());
uiz_fnt_dp_15=fnt;
}else{
UIZ_FONT_IMPORT(multiplier)
sdbm("[uiZ|info]Now using font: ",fnt," of size: ",sizes[hasdiff]," with ideal size being: ",sz," your dpi is: ",uiz_dp, "and the unaware dpi is: ",display_get_dpi_y());
}
globalvar uiz_fnt_px_10; //use of px fonts is discouraged, since it won't scale properly between 1080p and 4k screens. Using pixel values to build your ui is discouraged in general.
uiz_fnt_px_10=uiz_fnt_5;
//uiz_fnt_px_10=font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",10*multiplier,false,false,32,128);//english only
//uiz_fnt_px_10=font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",10*multiplier,false,false,32,255);//general european

#define UIZ_FONT_IMPORT
sdbm("[uiZ|Warning] generating new font page, performance issues might arrise.")
//uiz_fnt_dp_15=font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",0.15*uiz_dp*argument0,false,false,32,128);//english only
uiz_fnt_dp_15=font_add("uiz\m-fonts_m-2p\mplus-2p-regular.ttf",0.15*uiz_dp*argument0,false,false,32,255);//general european