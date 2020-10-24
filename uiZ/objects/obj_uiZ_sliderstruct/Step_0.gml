//if keyboard_check_pressed(vk_space) then{uiz_sliderstruct_setframe(id,frame-1)}
if newframe != oldframe and dir != 0 and hasmouse = false then {
    var fa, fb, f;
    linearvalue = clamp(linearvalue + uiz_sc(animationtime) * moveback, 0, 1)
    if dir = -1 then {
        fa = oldframe
        fb = newframe
        f = uiz_animation_getFunction(linearvalue, animation);
    } else {
        fb = oldframe
        fa = newframe
        f = 1 - uiz_animation_getFunction(linearvalue, animation);   
    }
    
    
    
    if horizontal = true then {
        fa.posinframex = uiz_snapleft;
        fa.posinframey = uiz_snaptop;
        fb.posinframex = uiz_snapright;
        fb.posinframey = uiz_snaptop;
        fa.setpointx = f
        fb.setpointx = f
    } else {
        fa.posinframex = uiz_snapleft;
        fa.posinframey = uiz_snaptop;
        fb.posinframex = uiz_snapleft;
        fb.posinframey = uiz_snapbottom;
        fa.setpointy = f
        fb.setpointy = f
    }
    uiz_fixgeneralpos(fa)
    uiz_fixgeneralpos(fb)
    uiz_fixChildren(fa, true)
    uiz_fixChildren(fb, true)
    if linearvalue = 1 then {
        uiz_destroyObject(oldframe);
        oldframe = newframe;
        dir = 0;
        moveback = 1;
        if queuedframe!=-1 then{
          uiz_sliderstruct_setframe(id,queuedframe);  
        queuedframe=-1;
        }
    }
    if linearvalue = 0 and moveback = -1 then {
        uiz_destroyObject(newframe);
        newframe = oldframe;
        dir = 0;
        moveback = 1;
        if queuedframe!=-1 then{
          uiz_sliderstruct_setframe(id,queuedframe); 
                   
        queuedframe=-1;
        }
    }
} else {
    //handle mouse
    if horizontal = true then {
        var me = uiz_getposx_self(slidesize, slidesizetype)
    } else {
        var me = uiz_getposy_self(slidesize, slidesizetype)
    }
    if hasmouse = false and global.mousefrozen = false and mouseslide = true and mouse_check_button(mb_left) and point_in_rectangle(uiz_getmouse_x(), uiz_getmouse_y(), max(rx, cntnx), max(ry, cntny), min(rlx, cntnlx), min(rly, cntnly))
    and(slideonwholeframe = true or(horizontal = true and(uiz_getmouse_x() < rx + me or uiz_getmouse_x() > rlx - me)) or(horizontal = false and(uiz_getmouse_y() < ry + me or uiz_getmouse_y() > rly - me)))
    then {
        //slide frame
        oldclickframe = frame;
        hasmouse = true
        global.mousefrozen = true;
        global.mouseoverobject = id;
        global.mouseoverframe = id;
        //make sure oldframe doesn't exists anymore
        
        if instance_exists(oldframe) && oldframe!=newframe then{
            uiz_destroyObject(oldframe);
        }
        
        oldframe = newframe;
        oldhasmouseframe = frame;
        //create newframe
        newframe = uiz_c(obj_uiZ_frame)
        uiz_setParent(newframe, id)
        newframe.posinframex = uiz_snapleft;
        newframe.posinframey = uiz_snaptop;
        newframe.posvalwtype = fc;
        newframe.posvalhtype = fc;
        newframe.posvalw = 1;
        newframe.posvalh = 1;


        uiz_fixframepos(newframe)
    }
}


if hasmouse = true then {
    if !mouse_check_button(mb_left) then {
        hasmouse = false;
        global.mousefrozen = false;
    }
    var dopass = false
    if horizontal = true then {
        var f = global.uiz_mouseswipedx / width
        f = clamp(abs(f), 0, 1) * sign(f)
        if abs(global.uiz_mouseswipedx) >= uiz_getposx_self(slidedist, slidedisttype) then {
            dopass = true
        }
    } else {
        var f = global.uiz_mouseswipedy / height
        f = clamp(abs(f), 0, 1) * sign(f)
        if abs(global.uiz_mouseswipedy) >= uiz_getposy_self(slidedist, slidedisttype) then {
            dopass = true
        }
    }
    var of = f;
    var setdir = sign(f);
    if (setdir = 1 and oldhasmouseframe = 0) or(setdir = -1 and oldhasmouseframe = frames) then {
        setdir = 0;
        dir = 0;
    }
    f = abs(f);
    if horizontal = true then {
        moveback = -uiz_sign(global.lastmousemovedxsign) * dir
    } else {
        moveback = -uiz_sign(global.lastmousemovedysign) * dir
    }
    /*
    if dopass = false then {
        moveback = -1
    }
    */
    
    if moveback = -1 then{
        frame = oldhasmouseframe;
    }else{
        frame = oldhasmouseframe - setdir;
    }
    
    if dir != setdir and setdir != 0 then {
        uiz_destroyObject_notself(newframe)
        update = true;
        dir = setdir;
        frame = oldhasmouseframe - setdir;
        if (updatescript!=-1 and script_exists(updatescript)){script_execute(updatescript,id,updatescriptargument);}
    }

    if dir != 0 then {
        linearvalue = f;
        if dir = -1 then {
            fa = oldframe
            fb = newframe
        } else {
            fb = oldframe
            fa = newframe
            f = 1 - f;
        }
        
        if horizontal = true then {
            fa.posinframex = uiz_snapleft;
            fa.posinframey = uiz_snaptop;
            fb.posinframex = uiz_snapright;
            fb.posinframey = uiz_snaptop;
            fa.setpointx = f
            fb.setpointx = f
        } else {
            fa.posinframex = uiz_snapleft;
            fa.posinframey = uiz_snaptop;
            fb.posinframex = uiz_snapleft;
            fb.posinframey = uiz_snapbottom;
            fa.setpointy = f
            fb.setpointy = f
        }

        uiz_fixgeneralpos(fa)
        uiz_fixgeneralpos(fb)
        uiz_fixChildren(fa, true)
        uiz_fixChildren(fb, true)
        if instance_exists(tabslider) then {
            if hasmouse then {
                //uiz_tabslider_setvalue(tabslider,frame,abs(of),true)
                if moveback = -1 then {
                    uiz_tabslider_setvalue(tabslider, oldclickframe, abs( of ), true);
                } else {
                    uiz_tabslider_setvalue(tabslider, frame, abs( of ));
                }
            } else {
                    tabslider.value=-1;//lord foregive me for this dirty, dirty hack.
                if moveback = -1 then {
                    frame=oldclickframe;
                }
                uiz_tabslider_setvalue(tabslider, frame, abs( of ));
            }
        }
    }


}

/* */
///update from tabslider
if instance_exists(tabslider) then{
if tabslider.updated=true then{
uiz_sliderstruct_setframe(id,tabslider.value)
}
}

/* */
/*  */
