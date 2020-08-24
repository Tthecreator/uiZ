///uiz_frameset_switch(id)
//switches horizotantal divisions to vertical divisions, and vertical divisions to horizontal ones.
//Made to be applied to an entire frameset, but can also be assigned to an anchor in a frameset. 
with(argument0) {
    uiz_updater_FixViews();
    //sdbm("object index:",object_index,object_get_name(object_index),divisions)
    if object_index = obj_uiZ_framerowanchor or object_index = obj_uiZ_framecolanchor then {
        if divisions > 0 and array_length_1d(frameat) > 0 then {
            for (var i = 0; i < divisions; i++) {
                var o = frameat[i];
                o.x = 0;
                o.y = 0;
                if instance_exists(o) and(o.object_index = obj_uiZ_framerowanchor or o.object_index = obj_uiZ_framecolanchor) then {
                    uiz_frameset_switch(o);
                }
            }
        }
        if object_index = obj_uiZ_framerowanchor then {
            var n = uiz_c(obj_uiZ_framecolanchor);
        } else {
            var n = uiz_c(obj_uiZ_framerowanchor);
        }
        uiz_children_adopt(id, n);
        uiz_setParent(n, parent)
        if parent.object_index = obj_uiZ_frameset then {
            parent.headframe = n;
        }
        parent.frameat[inlistpos] = n;
        n.x = 0;
        n.y = 0;
        n.posvalx = 0;
        n.posvaly = 0;
        n.inlistpos = inlistpos;
        n.divisions = divisions
        n.frameat = frameat;
        n.isz = isz;
        n.isize = isize;
        n.isizetype = isizetype;
        n.hasBar = hasBar;
        n.minSize = minSize;
        n.minSizeType = minSizeType;
        n.maxSize = maxSize;
        n.maxSizeType = maxSizeType;
        n.absorbPixelDiff = absorbPixelDiff;
        n.absorbPixelDiffTotal = absorbPixelDiffTotal;
        n.doxt = doxt;
        n.depth = depth
        n.head_alpha = head_alpha
        n.main_alpha = main_alpha
        n.alpha = alpha
        n.thickness = thickness;
        n.frameBarThickness = frameBarThickness;
        n.frameBarThicknessType = frameBarThicknessType;
        n.topframemargin = topframemargin;
        n.bottomframemargin = bottomframemargin;
        n.leftframemargin = leftframemargin;
        n.rightframemargin = rightframemargin;
        n.uiz_shader = uiz_shader;
        n.margint = margint;
        n.marginb = marginb;
        n.marginr = marginr;
        n.marginl = marginl;
        n.texturemode_horizontal = texturemode_horizontal;
        n.texturemode_vertical = texturemode_vertical;
        n.iscover = iscover;
        n.draw = draw;
        n.spriteconnectionleft = spriteconnectionleft;
        n.spriteconnectionright = spriteconnectionright;
        n.overframebar = overframebar;
        uiz_destroyobject(id)
    } else {
        if object_index = obj_uiZ_frameset and array_length_1d(frameat) > 0 then {
            var o = frameat[0];
            if instance_exists(o) and(o.object_index = obj_uiZ_framerowanchor or o.object_index = obj_uiZ_framecolanchor) then {
                uiz_frameset_switch(o)
            }
        }
    }
}
