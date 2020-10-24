kmouseover = uiz_mouse_isOver_object_leftCheck(id);
uiz_frameset_colanchor_CalculateOverFrameBar();

if kmouseover==uiz_mousereleased {
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
        mousediff = - ((uiz_getmouse_x() - frameat[overframebar].rlx) - mousesnappoint);
    }
    lastmouse = uiz_getmouse_x();
    stopsnap = false;
    
    var bothWidth = frameat[snaptobar].width + frameat[snaptobar + 1].width;
    if maxSize[snaptobar+1] == 0 then {
        var du = 0;
    } else {
        var du = bothWidth - uiz_getposx_self(maxSize[snaptobar+1], maxSizeType[snaptobar+1]);
    }
    
    if maxSize[snaptobar] == 0 then {
        var dm = 0;
    } else {
        var dm = bothWidth - uiz_getposx_self(maxSize[snaptobar], maxSizeType[snaptobar]);
    }
    
    var thisMinSize = max(uiz_getposx_self(minSize[snaptobar], minSizeType[snaptobar]), du, 0*(isizetype[snaptobar]==xtra));
    var otherMinSize = max(uiz_getposx_self(minSize[snaptobar + 1], minSizeType[snaptobar + 1]), dm, 0*(isizetype[snaptobar + 1]==xtra));
    var thisMaxSize = bothWidth - otherMinSize;
    var otherMaxSize = bothWidth - thisMinSize;
    
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
            isize[snaptobar] = min(1 - 1 / width, max(1 / width, ((isize[snaptobar] * width) - mousediff) / width))
            if isize[snaptobar] < thisMinSize / width then{
                isize[snaptobar] = thisMinSize / width;
                stopsnap = true;
            }else if isize[snaptobar] > thisMaxSize / width then{
                isize[snaptobar] = thisMaxSize / width;
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
            isize[snaptobar + 1] = min(1 - 1 / width, max(1 / width, ((isize[snaptobar + 1] * width) + mousediff) / width))
            if isize[snaptobar + 1] < otherMinSize / width then{
                isize[snaptobar + 1] = otherMinSize / width;
                stopsnap = true;
            }else if isize[snaptobar + 1] > otherMaxSize / width then{
                isize[snaptobar + 1] = otherMaxSize / width;
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
        
            var newW = (frameat[snaptobar].width - mousediff);
            if newW < thisMinSize then{
                newW = thisMinSize;
                stopsnap = true;
            }else if newW > thisMaxSize then{
                newW = thisMaxSize;
                stopsnap = true;
            }
            
            var oldIsize = isize[snaptobar];
            var totISize = isize[snaptobar] + isize[snaptobar + 1];
            isize[snaptobar] = newW / startSize;
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
        //LEFT FRAME ONLY XTRA
            switch (isizetype[snaptobar + 1]) {
                case px:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)
                    break;
                case fc:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)*width
                    break;
                case dp:
                    var toleftOffset = (isize[snaptobar + 1] - oldISizeOther)*uiz_dp
                    break;
            }
            //get total amount of xtra
            uiz_frameset_handleExtraOffset(toleftOffset, 0);
        }
    } else if isizetype[snaptobar+1]==xtra then{
        //RIGHT FRAME ONLY XTRA
        switch (isizetype[snaptobar]) {
            case px:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)
                break;
            case fc:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)*width
                break;
            case dp:
                var toleftOffset = (isize[snaptobar] - oldISizeThis)*uiz_dp
                break;
        }
        //get total amount of xtra
        uiz_frameset_handleExtraOffset(toleftOffset, 1);
    }
    
    uiz_framesetfixvertical(id);
    uiz_updater_FixViews();
}

