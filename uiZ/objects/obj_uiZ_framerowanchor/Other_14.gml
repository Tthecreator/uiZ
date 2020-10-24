kmouseover = uiz_mouse_isOver_object_leftCheck(id); //needed here when mouse is frozen
uiz_frameset_rowanchor_CalculateOverFrameBar();

if kmouseover == uiz_mousereleased {
    if snaptomouse = 1 then {
        stopsnap = 0
        snaptomouse = 0
        uiz_mouse_unFreeze();
        uiz_updater_unstep();
    }
}
if snaptomouse > 0 then {

    if uiz_getmouse_x() < 0 or uiz_getmouse_y() < 0 or uiz_getmouse_x() > global.screenpxwidth or uiz_getmouse_y() > global.screenpxheight then {
        stopsnap = true;
    }

    if stopsnap then {
        mousediff = 0;
    } else {
        mousediff = - ((uiz_getmouse_y() - frameat[overframebar].rly) - mousesnappoint);
    }
    lastmouse = uiz_getmouse_y();
    stopsnap = false;
    
    var bothHeight = frameat[snaptobar].height + frameat[snaptobar + 1].height
    if maxSize[snaptobar+1] == 0 then {
        var du = 0;
    } else {
        var du = bothHeight - uiz_getposy_self(maxSize[snaptobar+1], maxSizeType[snaptobar+1]);
    }
    
    if maxSize[snaptobar] == 0 then {
        var dm = 0;
    } else {
        var dm = bothHeight - uiz_getposy_self(maxSize[snaptobar], maxSizeType[snaptobar]);
    }
    
    var thisMinSize = max(uiz_getposy_self(minSize[snaptobar], minSizeType[snaptobar]), du, 0*(isizetype[snaptobar]==xtra));
    var otherMinSize = max(uiz_getposy_self(minSize[snaptobar + 1], minSizeType[snaptobar + 1]), dm, 0*(isizetype[snaptobar + 1]==xtra));
    var thisMaxSize = bothHeight - otherMinSize;
    var otherMaxSize = bothHeight - thisMinSize;
    
    if thisMinSize > thisMaxSize then{
        sdbm("[uiZ|WARNING] Frameset minimum and frame maximum sizes are incompatible with each other!");
        exit;
    }
    
    //fix isz
    isz[snaptobar] -= mousediff
    if isz[snaptobar] < thisMinSize then{
        isz[snaptobar] = thisMinSize;
    }else if isz[snaptobar] > thisMaxSize then{
        isz[snaptobar] = thisMaxSize;
    }
    isz[snaptobar + 1] += mousediff
    if isz[snaptobar + 1] < otherMinSize then{
        isz[snaptobar + 1] = otherMinSize;
    }else if isz[snaptobar + 1] > otherMaxSize then{
        isz[snaptobar + 1] = otherMaxSize;
    }

    var oldISizeThis = isize[snaptobar];
    
    switch (isizetype[snaptobar]) {
        case px:
            isize[snaptobar] -= mousediff
            if isize[snaptobar] < thisMinSize then{
                isize[snaptobar] = thisMinSize;
                stopsnap = true;
            }else if isize[snaptobar] > thisMaxSize then{
                isize[snaptobar] = thisMaxSize;
                stopsnap = true;
            }
            break;
        case fc:
            isize[snaptobar] = min(1 - 1 / height, max(1 / height, ((isize[snaptobar] * height) - mousediff) / height))
            if isize[snaptobar] < thisMinSize / height then{
                isize[snaptobar] = thisMinSize / height;
                stopsnap = true;
            }else if isize[snaptobar] > thisMaxSize / height then{
                isize[snaptobar] = thisMaxSize / height;
                stopsnap = true;
            }
            break;
        case dp:
            isize[snaptobar] -= mousediff / uiz_dp
            if isize[snaptobar] < thisMinSize / uiz_dp then{
                isize[snaptobar] = thisMinSize / uiz_dp;
                stopsnap = true;
            }else if isize[snaptobar] > thisMaxSize / uiz_dp then{
                isize[snaptobar] = thisMaxSize / uiz_dp;
                stopsnap = true;
            }
            break;
    }
    
    var oldISizeOther = isize[snaptobar + 1];
    
    switch (isizetype[snaptobar + 1]) {
        case px:
            isize[snaptobar + 1] += mousediff
            if isize[snaptobar + 1] < otherMinSize then{
                isize[snaptobar + 1] = otherMinSize;
                stopsnap = true;
            }else if isize[snaptobar + 1] > otherMaxSize then{
                isize[snaptobar + 1] = otherMaxSize;
                stopsnap = true;
            }
            break;
        case fc:
            isize[snaptobar + 1] = min(1 - 1 / height, max(1 / height, ((isize[snaptobar + 1] * height) + mousediff) / height))
            if isize[snaptobar + 1] < otherMinSize / height then{
                isize[snaptobar + 1] = otherMinSize / height;
                stopsnap = true;
            }else if isize[snaptobar + 1] > otherMaxSize / height then{
                isize[snaptobar + 1] = otherMaxSize / height;
                stopsnap = true;
            }            
            break;
        case dp:
            isize[snaptobar + 1] += mousediff / uiz_dp
            if isize[snaptobar + 1] < otherMinSize / uiz_dp then{
                isize[snaptobar + 1] = otherMinSize / uiz_dp;
                stopsnap = true;
            }else if isize[snaptobar + 1] > otherMaxSize / uiz_dp then{
                isize[snaptobar + 1] = otherMaxSize / uiz_dp;
                stopsnap = true;
            }
            break;
    }
    
    if isizetype[snaptobar]==xtra then{
        if isizetype[snaptobar+1]==xtra then{
        //BOTH XTRA
            var startSize = floor(toleft / starsr);
        
            var newH = (frameat[snaptobar].height - mousediff);
            if newH < thisMinSize then{
                newH = thisMinSize;
                stopsnap = true;
            }else if newH > thisMaxSize then{
                newH = thisMaxSize;
                stopsnap = true;
            }
            
            var oldIsize = isize[snaptobar];
            var totISize = isize[snaptobar] + isize[snaptobar + 1];
            isize[snaptobar] = newH / startSize;
            isize[snaptobar + 1] -= (isize[snaptobar] - oldIsize)
            var newTotISize = isize[snaptobar] + isize[snaptobar + 1];
            
            //recalculate starsr to forgo rounding errors
            starsr = 0;
            for (var i = 0; i < divisions; i++) {
                if isizetype[i]==xtra then{
                    starsr+=isize[i];
                }
            }
            
            uiz_frameset_fixAbsorbPixelDiff(0);
        }else{
        //TOP FRAME ONLY XTRA
            switch (isizetype[snaptobar + 1]) {
                case px:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)
                    break;
                case fc:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)*height
                    break;
                case dp:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)*uiz_dp
                    break;
            }
            //get total amount of xtra
            uiz_frameset_handleExtraOffset(toleftOffset, 0);
        }
    } else if isizetype[snaptobar+1]==xtra then{
        //BOTTOM FRAME ONLY XTRA
        switch (isizetype[snaptobar]) {
            case px:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)
                break;
            case fc:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)*height
                break;
            case dp:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)*uiz_dp
                break;
        }
        //get total amount of xtra
        uiz_frameset_handleExtraOffset(toleftOffset, 1);
    }
    
    uiz_framesetfixhorizontal(id);
    uiz_updater_FixViews();
}

