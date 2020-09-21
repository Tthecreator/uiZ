#define uiz_frameset_handleExtraOffset
///uiz_frameset_handleExtraOffset(toleftOffset, snaptobarOffset)
var toleftOffset = argument0;
if toleftOffset != 0 then {
    var oldToleft = toleft;
    toleft -= toleftOffset;
    
    var oldStarsr = starsr;
    starsr = (toleft / oldToleft) * oldStarsr;
    
    isize[snaptobar + argument1] += starsr - oldStarsr;
        
    uiz_frameset_fixAbsorbPixelDiff(argument1);
    
}

#define uiz_frameset_fixAbsorbPixelDiff
///uiz_frameset_fixAbsorbPixelDiff(snaptobarOffset)
if (lastFixSize==width and object_index=obj_uiZ_framecolanchor) or (lastFixSize==height and object_index=obj_uiZ_framerowanchor) then{
    var pixelDiff_new = toleft;
    var startSize = (toleft / starsr);
    for (var i = 0; i < divisions; ++i) {
        if isizetype[i] = xtra then {
            var val = round(startSize * isize[i])
            if (val + absorbPixelDiff[i]) != isz[i] then{
                var pixelDiff_diff = isz[i] - (val + absorbPixelDiff[i]);
                absorbPixelDiff[i] += pixelDiff_diff;
                absorbPixelDiffTotal += pixelDiff_diff;
            }
            pixelDiff_new -= val;
        }
    }
    
    var pixelDiff_old = absorbPixelDiffTotal;
    //sdbm("pixelDiff",pixelDiff_new,pixelDiff_old);
    if pixelDiff_old != pixelDiff_new then{
        var pixelDiff_diff = pixelDiff_new - pixelDiff_old;
        absorbPixelDiff[snaptobar + argument0] += pixelDiff_diff;
        absorbPixelDiffTotal += pixelDiff_diff;
    }
}