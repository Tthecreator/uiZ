/// @description uiz_framesetfixhorizontal(anchor)
/// @param anchor
function uiz_framesetfixhorizontal(argument0) {
	/*
	A more advanced function which requires more knowledge of the interal workings of uiz framesetstructures.
	Takes an anchor and "fixes" its division values.
	The right function needs to be used with the right type of anchor, else errors might occur.
	A more global and easier function would be: uiz_fixframesetpos() which can also be handled by uiz_fixgeneralpos(). 
	*/
	with(argument0) {
	    uiz_fix_Base_Pos();
	    uiz_fix_Base_Alpha();
	    uiz_fix_Base_Margins();
	    uiz_frameset_fixThickness();
	}



	var g = argument0;

	var updateIsz = false;
	if g.lastFixSize != g.height or forceFixSize then{
	    updateIsz = true;
	    forceFixSize = false;
	}

	if updateIsz then{
	    g.starsr = 0
	    var toleft = g.iheight - g.margint - g.marginb;
	    for (var i = 0; i < g.divisions; i++) {
    
	        if g.isize[i] < 0 then {
	            g.isize[i] = 0
	        }
    
	        switch (g.isizetype[i]) {
	            case xtra:
	                g.starsr += g.isize[i]
	                break;
	            case px:
	                g.isz[i] = round(g.isize[i] + g.margincellh * 2);
	                toleft -= g.isz[i]
	                break;
	            case dp:
	                g.isz[i] = round(g.isize[i] * uiz_dp + g.margincellh * 2);
	                toleft -= round(g.isz[i]);
	                break;
	            case fc:
	            case fcy:
	                g.isz[i] = round(g.isize[i] * (g.iheight - g.margint - g.marginb) + g.margincellh * 2);
	                toleft -= g.isz[i]
	                break;
	            case fcx:
	                g.isz[i] = round(g.isize[i] * (g.iwidth - g.marginr - g.marginl) + g.margincellh * 2);
	                toleft -= g.isz[i]
	                break;
	        }
	        if g.hasBar[i] then{
	            toleft -= g.thickness;
	        }
	    }
    
	    g.toleft = toleft;
    
	    if g.starsr > 0 then {
	        if toleft > 0 then {
	            var startSize = (toleft / g.starsr);
	            uiz_frameset_getLeftOverXtraPixels(g);
    
	            for (var i = 0; i < g.divisions; ++i) {
	                if g.isizetype[i] = xtra then {
	                    g.isz[i] = round(startSize * g.isize[i])+g.absorbPixelDiff[i];
                    
	                }
	            }
	        } else {
	            for (var i = 0; i < g.divisions; i++) {
	                if g.isizetype[i] = xtra then {
	                    g.isz[i] = 0;
	                }
	            }
	        }
	    }
    
	    if toleft < 0 then {
	        var factor = (g.iheight - g.margint - g.marginb) / (g.iheight - g.margint - g.marginb - toleft)
	        for (var i = 0; i < g.divisions; i++) {
	            g.isz[i] *= factor
	        }
	    }
	}
	//really set the objects sizes
	at = g.margint
	for (var i = 0; i < g.divisions; i++) {
	    g.doxt[i] = 0
	    g.frameat[i].y = at + g.margincellh
	    at += g.isz[i]
	    if g.hasBar[i] then{ at += g.thickness;}
	    //set the final framesizes
	    g.frameat[i].height = g.isz[i] - g.margincellh * 2
	    g.frameat[i].width = g.iwidth;
	    //sdbm("       i:",i," isz:",g.isz[i]," isize:",g.isize[i]," absorb:",g.absorbPixelDiff[i]," height:",g.frameat[i].height," y:",g.frameat[i].y)

	    if g.frameat[i].object_index = obj_uiZ_framerowanchor then {
	        g.doxt[i] = 1
	    }
	    if g.frameat[i].object_index = obj_uiZ_framecolanchor then {
	        g.doxt[i] = 2
	    }
	}

	for (var i = 0; i < g.divisions; i++) {
	    if global.isfixinggrandchildren = false then {
	        uiz_fixgeneralpos(g.frameat[i])
	        uiz_fixChildren(g.frameat[i], 1)
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

	g.lastFixSize = g.height;



}
