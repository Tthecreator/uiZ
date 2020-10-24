/// @description handle buttons on left side
var butId = uiz_getmouse_x()-ix;
var buts = ds_list_size(custom_buttons_left_sprite);
var butSize = bars * buts;
var checkbuttons = false;

if kmouseover > 0 and uiz_getmouse_y()>=iy-bars+doublemargins*topframemargin and uiz_getmouse_y()<=iy-doublemargins*bottomframemargin and uiz_getmouse_x() > ix and uiz_getmouse_x() < ix+butSize and global.mousefrozen = false and isresizing = 0 and snaptomouse = 0 then {
    checkbuttons = true;
    overbut_left = floor((uiz_getmouse_x()-ix)/bars);
}else{
    overbut_left = -1;
}

var upd=false;
if (loverbut_left != overbut_left and((loverbut_left >= 0 and loverbut_left < buts) or(overbut_left >= 0 and overbut_left < buts))) {
    for(var i=0;i<buts;++i){
        custom_buttons_left_state[| i]=0;
    }
    custom_buttons_left_state[| overbut_left]=1;
    upd=true;
    loverbut_left = overbut_left;
}

if !is_undefined(custom_buttons_left_state[| overbut_left]) and custom_buttons_left_state[| overbut_left] > 0 then{
    var ns=mouse_check_button(mb_left) + 1;
    if ns!=custom_buttons_left_state[| overbut_left] then{
    custom_buttons_left_state[| overbut_left] = ns;
    upd=true;
    }
    if mouse_check_button_released(mb_left) then {
        script_execute(custom_buttons_left_script[| overbut_left],id,overbut_left);
    }
}

if upd=true then{
    uiz_updater_FixViews_area(ix,ry,ix+butSize,iy);//REENABLE//
}

///check mouse and rescale window
var fix=false;
//kmouseover = uiz_mouse_isonwindow_leftcheck(id);
//sdbm("iding",id,object_index,object_get_name(object_index));
//sdbm(global.mousefrozen,"sn",snaptomouse,"rs",resizable,"km",kmouseover)
if global.mousefrozen = false and snaptomouse = 0 and resizable and kmouseover > 0{// and(uiz_range_duo(uiz_getmouse_x(), rx, ix, ilx, rlx) or uiz_range_duo(uiz_getmouse_y(), ry, iy, ily, rly)) then {
    isresizing = true;
    isresizing_y = uiz_null;
    isresizing_x = uiz_null;
    var cornerMargin = 10;

    if (uiz_getmouse_x() > rlx - cornerMargin and uiz_getmouse_y() > rly - cornerMargin) then {
        //right bottom
        isresizing_y = uiz_bottom;
        isresizing_x = uiz_right;
        uiz_set_cursor(cr_size_nwse);
    } else {
        //check left bottom
        if (uiz_getmouse_x() < rx + cornerMargin and uiz_getmouse_y() > rly - cornerMargin) then {
            //left bottom
            isresizing_y = uiz_bottom;
            isresizing_x = uiz_left;
            uiz_set_cursor(cr_size_nesw);
        } else {
            //check left top
            if (uiz_getmouse_x() < rx + cornerMargin and uiz_getmouse_y() < ry + cornerMargin) then {
                //left top
                isresizing_y = uiz_top;
                isresizing_x = uiz_left;
                uiz_set_cursor(cr_size_nwse);
            } else {
                //check right top
                if (uiz_getmouse_x() > rlx - cornerMargin and uiz_getmouse_y() < ry + cornerMargin) then {
                    //right top
                    isresizing_y = uiz_top;
                    isresizing_x = uiz_right;
                    uiz_set_cursor(cr_size_nesw);
                } else {
                    //check top
                    if (uiz_getmouse_y() < ry + bkmar + doublemargins*topframemargin) then {
                        //top
                        isresizing_y = uiz_top;
                        uiz_set_cursor(cr_size_ns);
                    } else {
                        //check bottom
                        if (uiz_getmouse_y() > ily) then {
                            //bottom
                            isresizing_y = uiz_bottom;
                            uiz_set_cursor(cr_size_ns);
                        } else {
                            //check left
                            if (uiz_getmouse_x() < ix) then {
                                isresizing_x = uiz_left;
                                uiz_set_cursor(cr_size_we);
                            } else {
                                //check right
                                if (uiz_getmouse_x() > ilx) then {
                                    //right
                                    isresizing_x = uiz_right;
                                    uiz_set_cursor(cr_size_we);
                                } else {
                                    uiz_set_cursor(cr_default);
                                    isresizing = false;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
if !mouse_check_button(mb_left) then{
isresizing=false;
isresizing_y = uiz_null;
isresizing_x = uiz_null;
}
if isresizing=true then{
global.mousefrozen = true;
switch(sizestatus){
case 0:
uiz_window_unminimize();
iwidth=width-end_leftframemargin-end_rightframemargin;
iheight=height-end_topframemargin-end_bottomframemargin;
break;
case 1:
uiz_window_an_old();
break;
}
}
uiz_window_getgraboff();
}
if isresizing=true and !mouse_check_button(mb_left) then{
isresizing=false;
isresizing_y = uiz_null;
isresizing_x = uiz_null;
global.mousefrozen = false;
}

if resizable and isresizing then{
    posinframex = uiz_static;
    posinframey = uiz_static;
    posvalhtype = uiz_nonpos;
    posvalwtype = uiz_nonpos;
    fix=true;
    var pxmovedx,pxmovedy;
    var x_min,y_min,x_max,y_max;
    switch(contain){
        case uiz_window_contain_topbar:
            x_min=parent.ix+end_leftframemargin;
            y_min=parent.iy+end_topframemargin;
            x_max=parent.ilx-end_rightframemargin;
            y_max=99999999999999;
            w_max=parent.ilx;
            h_max=99999999999999;
        break;
        case uiz_window_contain_window:
            x_min=parent.ix+end_leftframemargin;
            y_min=parent.iy+end_topframemargin;
            x_max=parent.ilx-end_rightframemargin;
            y_max=parent.ily-end_bottomframemargin;
            w_max=parent.iwidth;
            h_max=parent.iheight;
        break;
        case uiz_window_contain_corner:
            x_min=-9999999999999;
            y_min=parent.iy+end_topframemargin;
            x_max=99999999999999;//round(parent.ilx - (bars + end_rightframemargin));
            y_max=99999999999999;//round(parent.ily - end_topframemargin);
            w_max=99999999999999;
            h_max=99999999999999;
        break;
        default:
            x_min=-9999999999999;
            y_min=-9999999999999;
            x_max=99999999999999;
            y_max=99999999999999;
            w_max=99999999999999;
            h_max=99999999999999;
        break;
    }
    var xat,yat;
        if keepratio = true and isresizing_y!=uiz_null and isresizing_x!=uiz_null then {
        //some math stuff.
        //have an imaginary diagonal line at an angle of tan-1(ratio).
        //then calculate the closes point of the mouse on that line.
        if (isresizing_x-isresizing_y)=0 then{
        var al=-(ix)*ratio+(iy);
        }else{
        var al=-ilx*ratio+iy;
        }
        var ap=(uiz_getmouse_x()+graboffx)/ratio+(uiz_getmouse_y() + graboffy);
        //var ap=(rlx)/ratio+rly;
        //sdbm("ap",ap,ilx-uiz_getmouse_x()-graboffx,graboffx,ilx,uiz_getmouse_x())
        xat=clamp(round((-al+ap)*ratio/(1+ratio*ratio)),x_min,x_max);
        yat=round(al+xat*ratio);
        var yat_clamp=clamp(yat,y_min,y_max);
        if yat!=yat_clamp then{
            yat=yat_clamp;
            xat=round((yat_clamp-al)/ratio);
        }
       
    }else{
        xat=clamp(uiz_getmouse_x() + graboffx,x_min,x_max);
        yat=clamp(uiz_getmouse_y() + graboffy,y_min,y_max);
    }
    
    //get how much the mouse has moved
    switch (isresizing_y) {
        case uiz_top:
        pxmovedy=iy - yat ;
        break;
        case uiz_bottom:
        pxmovedy=ily - yat;
        break;
        }
    switch (isresizing_x) {
        case uiz_left:
        pxmovedx=ix - xat ;
        break;
        case uiz_right:
        pxmovedx=ilx - xat;
        break;
        }
        var ratio_abs=abs(ratio)
    //actually resize windows
    switch (isresizing_y) {
        case uiz_top:
            //top
            var oldheight = iheight
            iheight = max(iheight + pxmovedy , minh);
            break;
        case uiz_bottom:
            //bottom
            iheight = max(iheight - pxmovedy, minh);
            break;
    }
    switch (isresizing_x) {
        case uiz_left:
            //left
            var oldwidth = iwidth;
            iwidth = max(iwidth + pxmovedx, minw);
            break;
        case uiz_right:
            //right
            iwidth = max(iwidth - pxmovedx, minw);
            break;
    }
    //uiz_window_checkcontainment();
    if keepratio=true then{
    if isresizing_x=uiz_null then{
        iwidth = iheight/ratio_abs;
    }
    if isresizing_y=uiz_null then{
        iheight = iwidth*ratio_abs;
    }
    
    
        if abs((iheight/iwidth)-ratio_abs)>0.001 then{
            //sdbm("[uiZ|ERROR]Ratio of window is not set correctly anymore. This is now reverted, but might cause some other issues.")
            iheight = round(min(iwidth*ratio_abs,iheight));
            iwidth = round(min(iheight/ratio_abs,iwidth));
        }
        
    }
    
    if isresizing_y=uiz_top then{
        y += oldheight - iheight;
    }
    if isresizing_x=uiz_left then{
        x += oldwidth - iwidth;
    }
    width=iwidth+end_leftframemargin+end_rightframemargin;
    height=iheight+end_topframemargin+end_bottomframemargin;
    if inanimation=true then{
    uiz_animation_capture_newState(id);
    }
    //check for minimization
    if iwidth <= 0 and iheight <= 0 then {
        //minimum size
        sizestatus = 0;
    } else {
        //bigger than miminum size
        if sizestatus = 0 then {
            sizestatus = 1
        }
        if x<=maximizesnapmargin and y<=maximizesnapmargin and rlx >= parent.ilx-maximizesnapmargin and rly >= parent.ily-maximizesnapmargin then {
            //maximum size
            sizestatus = 2;
        } else {
            //smaller than maximum size
            if sizestatus = 2 then {
                sizestatus = 1;
            }
        }
    }
}

///Handle buttons and window movement
var fixforp = id;

if global.lockwindowresel = 0 and global.selectedwindow != id and global.mouseoverwindow = id and mouse_check_button(mb_left)/* and(sizestatus < 2 or global.lastmousemoved > 2 or snaptomouse = true) and isresizing = false */then {
    uiz_window_select(id);
}
var dorececkloverbut = false;
var customButtonSize = ds_list_size(custom_buttons_right_sprite);
var buttonssize = (button_cross + button_maximize + button_minimize + customButtonSize)
var frombuttons = ilx - bars * buttonssize
var inrange = uiz_range(uiz_getmouse_y(), ry, iy);
var inrange_last = uiz_range(uiz_getmouse_y_last(), ry, iy);


if kmouseover > 0 and uiz_getmouse_y()>=ry+doublemargins*topframemargin and uiz_getmouse_y()<=iy-bkmar-doublemargins*bottomframemargin and uiz_getmouse_x() > frombuttons and uiz_getmouse_x() < ilx and inrange = true and global.mousefrozen = false and isresizing = 0 and snaptomouse = 0 then {
    checkbuttons = true;
    //mouse over button area
    overbut = floor((uiz_getmouse_x() - frombuttons) / bars);
    
    if loverbut_mouse != mouse_check_button(mb_left) then {
        dorececkloverbut = true;
    }
} else {
    overbut = -1;
}
if checkbuttons = false and isresizing = 0 and global.selectedwindow = id and mouse_check_button(mb_left) and(sizestatus < 2 or global.lastmousemoved > 2 or snaptomouse = 1) then {
    if snaptomouse = 0 and inanimation = 0 and global.mouseoverwindow = id and inrange_last = true then {
        snaptomouse = 1
        global.mousefrozen = true
        mouseminx = uiz_getmouse_x()
        mouseminy = uiz_getmouse_y()
        windowsminx = x;
        windowsminy = y
        posinframex = uiz_static
        posinframey = uiz_static
        if sizestatus = 2 then {
            an_old_posinframex = uiz_static
            an_old_posinframey = uiz_static
            uiz_window_unmaximize();
            //windowsminx = uiz_getmouse_x() - ((uiz_getmouse_x()-parent.ix) / parent.width) * (an_old_width)
            var mouseXFactor = (uiz_getmouse_x() - parent.ix) / parent.width;
            windowsminx += parent.width * mouseXFactor - an_old_width * mouseXFactor
            fix = 2;
        }

    }
} else {
    if snaptomouse = 1 then {
        snaptomouse = 0;
        global.mousefrozen = false;
    }
}
var upd=false;
if (loverbut != overbut and((loverbut >= 0 and loverbut < buttonssize) or(overbut >= 0 and overbut < buttonssize))) {
    button_cross_state = 0;
    button_maximize_state = 0;
    button_minimize_state = 0;
    for(var i=0;i<customButtonSize;++i){
        custom_buttons_right_state[| i]=0;
    }
    upd=true;


    switch (overbut-customButtonSize) {
        case 0:
            if button_minimize = true then {
                button_minimize_state = 1;
            } else {
                if button_maximize = true then {
                    button_maximize_state = 1;
                } else {
                    if button_cross = true then {
                        button_cross_state = 1;
                    }
                }
            }
            break;
        case 1:
            if button_maximize = true then {
                button_maximize_state = 1
            } else {
                if button_cross = true then {
                    button_cross_state = 1;
                }
            }
            break;
        case 2:
            if button_cross = true then {
                button_cross_state = 1;
            }
            break;
        default:
            var customButtonPosition = customButtonSize-overbut-1;
            if customButtonPosition>=0 && customButtonPosition<customButtonSize then{
                custom_buttons_right_state[| customButtonPosition] = 1;
                
            }//else{
            //    sdbm("[uiZ|Warning] window custom button ID ",customButtonPosition," not found for window ",id)
            //}
            
            break;
    }
    loverbut_mouse = mouse_check_button(mb_left);
    loverbut = overbut;
}

for(var i=0;i<customButtonSize;++i){
    if custom_buttons_right_state[| i]>0 then{
        var ns=mouse_check_button(mb_left) + 1;
        if ns!=custom_buttons_right_state[| i] then{
            custom_buttons_right_state[| i] = ns;
            upd=true;
        }
        if mouse_check_button_released(mb_left) and script_exists(custom_buttons_right_script[| i]) then {
            script_execute(custom_buttons_right_script[| i],id,i);
        }
    }
}

if button_cross_state > 0 then {
    var ns=mouse_check_button(mb_left) + 1;
    if ns!=button_cross_state then{
    button_cross_state = ns;
    upd=true;
    }
    if mouse_check_button_released(mb_left) then {
        uiz_destroyObject_animation(id, destroyxfunction, destroyyfunction, destroyafunction, destroyspeed)
    }
}
if button_maximize_state > 0 then {
    var ns=mouse_check_button(mb_left) + 1;
    if ns!=button_maximize_state then{
    button_maximize_state = ns;
    upd=true;
    }
    if mouse_check_button_released(mb_left) then {
        uiz_window_switchmaximize()
    }
}
if button_minimize_state > 0 then {
    var ns=mouse_check_button(mb_left) + 1;
    if ns!=button_minimize_state then{
    button_minimize_state = ns;
    upd=true;
    }
    if mouse_check_button_released(mb_left) then {
        uiz_window_switchminimize()
    }
}
if upd=true then{
    uiz_updater_FixViews_area(frombuttons,ry,ilx,iy);//REENABLE//
}
if snaptomouse = 1 then {
    x = windowsminx + (uiz_getmouse_x() - mouseminx)
    y = windowsminy + (uiz_getmouse_y() - mouseminy)
    uiz_window_checkcontainment();
    fix = true;
}

if fix >= 1 then {
    uiz_fixwindowpos(fixforp);
    uiz_fixChildren(id, true)
}
lkmouseover = kmouseover;

/* */
/*  */
