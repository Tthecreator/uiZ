///uiz_framesetfixvertical(anchor,bool children?)
/*
A more advanced function which requires more knowledge of the interal workings of uiz framesetstructures.
Takes an anchor and "fixes" its division values.
The right function needs to be used with the right type of anchor, else errors might occur.
A more global and easier function would be: uiz_fixframesetpos() which can also be handled by uiz_fixgeneralpos(). 
*/
with(argument0) {
    uiz_fix_Base_Pos();
    uiz_fix_Base_Alpha();
    uiz_fix_Base_Margins()
}

if global.debug_action = true then {
    global.debug_action_count++
}
var g = argument0;
//if id=100055 then{sdbm(id,g.width)}
g.starsr = 0
var toleft = g.iwidth - g.marginl - g.marginr;
//sdbm("at1",g,g.width,g.iwidth,toleft)
for (var i = 0; i < g.divisions; i++) {

    if g.isize[i] < 0 then {
        g.isize[i] = 0
    }

    switch (g.isizetype[i]) {
        case xtra:
            g.starsr += g.isize[i]
            break;
        case px:
            g.isz[i] = round(g.isize[i] + g.margincellw * 2)
            toleft -= g.isz[i]
            break;
        case dp:
            g.isz[i] = round(g.isize[i] * uiz_dp + g.margincellw * 2)
            toleft -= g.isz[i]
            break;
        case fc:
        case fcx:
            g.isz[i] = round(g.isize[i] * (g.iwidth - g.marginr - g.marginl) + g.margincellw * 2)
            toleft -= g.isz[i]
            break;
        case fcy:
            g.isz[i] = round(g.isize[i] * (g.iheight - g.margint - g.marginb) + g.margincellw * 2)
            toleft -= g.isz[i]
            break;
    }
}

//var lastStar = -1;
if g.starsr > 0 then {
    if toleft > 0 then {
        var startSize = floor(toleft / g.starsr);
        var pixelDiff = floor(toleft - startSize * g.starsr);
        for (var i = 0; i < g.divisions; i++) {
            if g.isizetype[i] = xtra then {
                if pixelDiff>0 then{
                    --pixelDiff;
                    g.isz[i] = startSize * g.isize[i]+1;
                }else{
                    g.isz[i] = startSize * g.isize[i];
                }
            }
        }
    } else {
        for (var i = 0; i < g.divisions; i++) {
            if g.isizetype[i] = xtra then {
                g.isz[i] = 0;
                //lastStar = i;
            }
        }
    }
}


if toleft < 0 then {
    var factor = (g.iwidth - g.marginl - g.marginr) / (g.iwidth - g.marginl - g.marginr - toleft)
    for (var i = 0; i < g.divisions; i++) {
        g.isz[i] *= factor
    }
}
//really set the objects sizes
at = g.marginl
for (var i = 0; i < g.divisions; i++) {
    g.doxt[i] = 0
    if i > 0 and g.frameat[i - 1].framesetbar = 1 then {
        g.frameat[i].x = at + g.margincellw + g.thickness / 2
    } else {
        g.frameat[i].x = at + g.margincellw
    }
    at += g.isz[i]
    //set the final framesizes
    if g.frameat[i].framesetbar = 1 then {
        if i > 0 and g.frameat[i - 1].framesetbar = 1 then {
            g.frameat[i].width = g.isz[i] - g.margincellw * 2 - g.thickness
        } else {
            g.frameat[i].width = g.isz[i] - g.margincellw * 2 - g.thickness / 2
        }
    } else {
        if i > 0 and g.frameat[i - 1].framesetbar = 1 then {
            g.frameat[i].width = g.isz[i] - g.margincellw * 2 - g.thickness / 2
        } else {
            g.frameat[i].width = g.isz[i] - g.margincellw * 2
        }
    }
    g.frameat[i].height = g.iheight;
    

    if g.frameat[i].object_index = obj_uiZ_framerowanchor then {
        g.doxt[i] = 1
    }
    if g.frameat[i].object_index = obj_uiZ_framecolanchor then {
        g.doxt[i] = 2
    }
}

//fix rounding mismatches
/*
if g.divisions>0 then{
    var roundMismatch = (g.iwidth - g.marginl - g.marginr) - at;
    if roundMismatch > 0 then{//last item doesn't quite touch our size. This may be because of rounding errors.
        //make last (preferrably star) item a bit bigger
        if lastStar == -1 then{//if no star item is available
            lastStar = g.divisions-1;
        }
        g.frameat[lastStar].width += roundMismatch;
        for(var i=lastStar+1; i < g.divisions; ++i){//move all objects
            g.frameat[i].x += roundMismatch;
        }
    }
}
*/

for (var i = 0; i < g.divisions; i++) {
    if global.isfixinggrandchildren = false then {
        uiz_fixgeneralpos(g.frameat[i])
        uiz_fixchildren(g.frameat[i], 1)
    }
    switch (g.doxt[i]) {
        case 1:
            uiz_framesetfixhorizontal(g.frameat[i])
            break;
        case 2:
            uiz_framesetfixvertical(g.frameat[i])
            break;
    }
}
