#define uiz_frameset_getLeftOverXtraPixels
///uiz_frameset_getLeftOverXtraPixels(g)

var g = argument0;
var startSize = (g.toleft / g.starsr);
var pixelDiff = uiz_frameset_getLeftOverXtraPixels_getPixDiff(g);
sdbm("checking diff",g.toleft,startSize,pixelDiff,g.absorbPixelDiffTotal)
if g.absorbPixelDiffTotal!=pixelDiff then{
    g.absorbPixelDiffTotal = pixelDiff;
    for (var i = 0; i < g.divisions; i++) {
        if g.isizetype[i] = xtra then {
            g.absorbPixelDiff[i] = 0;
        }
    }
    while(pixelDiff > 0){
        for (var i = 0; i < g.divisions; i++) {
            if g.isizetype[i] = xtra then {
                if pixelDiff>0 then{
                    --pixelDiff;
                    ++g.absorbPixelDiff[i];
                }else{break;}
            }
        }
    }
    while(pixelDiff < 0){
        for (var i = 0; i < g.divisions; i++) {
            if g.isizetype[i] = xtra then {
                if pixelDiff<0 then{
                    ++pixelDiff;
                    --g.absorbPixelDiff[i];
                }else{break;}
            }
        }
    }
}
return pixelDiff;

#define uiz_frameset_getLeftOverXtraPixels_getPixDiff
var g = argument0;
var pixelDiff = g.toleft;
var startSize = (g.toleft / g.starsr);
for (var i = 0; i < g.divisions; ++i) {
    if g.isizetype[i] = xtra then {
        pixelDiff -= round(startSize * g.isize[i]);
    }
}
return pixelDiff;