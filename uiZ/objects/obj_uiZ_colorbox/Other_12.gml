if global.colorscreen != id or!instance_exists(w) then {

    if mouse_check_button_released(mb_left) and global.mouseover = id then {
        //spawn in a color menu
        if global.colorscreen != 0 and instance_exists(global.colorscreen) and instance_exists(global.colorscreen.w) then {
            //remove old window
            uiz_destroyObject(global.colorscreenobject)
        }

        uiz_colorbox_checkcolordump()
        sdbm("[uiZ|INFO]Spawning color menu")
        uiz_updater_step();
        global.colorscreen = id
        global.colorscreenobject = id
        w = uiz_window_create(4, dp, 5, dp)
        w.x = uiz_getmouse_x()
        w.y = uiz_getmouse_y()
        w.button_maximize = 0;
        w.button_minimize = 0;
        w.button_cross = 1;
        w.contain = 3
        w.windowtext = "colorpicker"
        //w.resizable = false;
        uiz_window_setminimumsize(w, 2, dp, 3, dp)
        uiz_fixgeneralpos(w)
        f = w;
        fs = uiz_frameset_create();
        uiz_setParent(fs, f)
        div1 = uiz_frameset_divide_vertical(fs, 0.7, fc, 1, xtra)
        picker = div1.frameat[0]
        sep = div1.frameat[1]

        div2 = uiz_frameset_divide_horizontal(picker, 0.4, fc, 0.2, fc, 1, xtra)
        hue = uiz_frameset_getObject(div2, 0);
        valsz = uiz_frameset_getObject(div2, 1);
        valsels = uiz_frameset_getObject(div2, 2);

        //hue = picker
        uiz_fixframesetpos(fs)
        uh = uiz_c(obj_uiZ_huesquare)
        uiz_setParent(uh, hue)
        uh.posinframex = uiz_fill
        uh.posinframey = uiz_fill
        uh.posvalx = 0
        uh.posvaly = 0
        uiz_fixgeneralpos(uh)

        div3 = uiz_frameset_divide_horizontal(sep, 0.1, fc, 1, xtra)
        colbox = div3.frameat[0]
        selector = div3.frameat[1]


        colorboxes = uiz_c(obj_uiZ_colorboxes)
        uiz_setParent(colorboxes, selector)
        colorboxes.posinframex = uiz_fill
        colorboxes.posinframey = uiz_fill
        uiz_fixgeneralpos(colorboxes)

        //color
        c = uiz_c(obj_uiZ_square)
        uiz_setParent(c, colbox)
        c.posinframex = uiz_fill
        c.posinframey = uiz_fill
        c.color = value
        uiz_fixgeneralpos(c)

        //make sure values are alright
        h = colour_get_hue(value);
        s = colour_get_saturation(value);
        v = colour_get_value(value);
        r = colour_get_red(value);
        g = colour_get_green(value);
        b = colour_get_blue(value);

        //value slider
        boxval = uiz_c(obj_uiZ_slider)
        uiz_setParent(boxval, valsz)
        boxval.coloroutline1 = c_black
        boxval.coloroutline2 = c_white
        boxval.value = v / 255
        boxval.posinframex = uiz_fill
        boxval.posinframey = fc
        boxval.posvaly = 0.05
        boxval.posvalhtype = fc
        boxval.posvalh = 0.2
        boxval.color1 = c_black
        boxval.color2 = c_white
        boxval.coloroutline1 = c_black
        boxval.coloroutline2 = c_white
        boxval.outline = 1
        boxval.roundedcorners = true;
        boxval.slidersize = 0.05;
        boxval.slidersizetype = dp;
        boxval.slidercolor=make_colour_rgb(125,165,255);
        boxval.slidercoloron=make_colour_rgb(37,80,202);
        boxval.slidercolorin=make_colour_rgb(65,238,195);
        uiz_slider_setvalue(boxval, v / 255)
        uiz_fixgeneralpos(boxval)

        //red slider
        boxred = uiz_c(obj_uiZ_slider)
        uiz_setParent(boxred, valsz)
        boxred.coloroutline1 = c_black
        boxred.coloroutline2 = c_red
        boxred.value = r / 255
        boxred.posinframex = uiz_fill
        boxred.posinframey = fc
        boxred.posvaly = 0.3
        boxred.posvalhtype = fc
        boxred.posvalh = 0.2
        boxred.color1 = c_black
        boxred.color2 = c_red
        boxred.outline = 1
        boxred.coloroutline1 = c_black
        boxred.coloroutline2 = c_red
        boxred.roundedcorners = true;
        boxred.slidersize = 0.05;
        boxred.slidersizetype = dp;
        boxred.slidercolor=make_colour_rgb(125,165,255);
        boxred.slidercoloron=make_colour_rgb(37,80,202);
        boxred.slidercolorin=make_colour_rgb(65,238,195);
        
        uiz_fixgeneralpos(boxred)
        
        //green slider
        boxgreen = uiz_c(obj_uiZ_slider)
        uiz_setParent(boxgreen, valsz)
        boxgreen.value = g / 255
        boxgreen.posinframex = uiz_fill
        boxgreen.posinframey = fc
        boxgreen.posvaly = 0.55
        boxgreen.posvalhtype = fc
        boxgreen.posvalh = 0.2
        boxgreen.color1 = c_black
        boxgreen.color2 = c_green
        boxgreen.coloroutline1 = c_black
        boxgreen.coloroutline2 = c_lime
        boxgreen.outline = 1
        boxgreen.posvalhpxdif = -1
        boxgreen.roundedcorners = true;
        boxgreen.slidersize = 0.05;
        boxgreen.slidersizetype = dp;
        boxgreen.slidercolor=make_colour_rgb(125,165,255);
        boxgreen.slidercoloron=make_colour_rgb(37,80,202);
        boxgreen.slidercolorin=make_colour_rgb(65,238,195);
        uiz_fixgeneralpos(boxgreen)
        
        //red slider
        boxblue = uiz_c(obj_uiZ_slider)
        uiz_setParent(boxblue, valsz)
        boxblue.coloroutline1 = c_black
        boxblue.coloroutline2 = c_blue
        boxblue.value = b / 255
        boxblue.posinframex = uiz_fill
        boxblue.posinframey = fc
        boxblue.posvaly = 0.80
        boxblue.posvalhtype = fc
        boxblue.posvalh = 0.2
        boxblue.color1 = c_black
        boxblue.color2 = c_blue
        boxblue.coloroutline1 = c_black
        boxblue.coloroutline2 = c_blue
        boxblue.outline = 1
        boxblue.roundedcorners = true;
        boxblue.slidersize = 0.05;
        boxblue.slidersizetype = dp;
        boxblue.slidercolor=make_colour_rgb(125,165,255);
        boxblue.slidercoloron=make_colour_rgb(37,80,202);
        boxblue.slidercolorin=make_colour_rgb(65,238,195);
        uiz_fixgeneralpos(boxblue)
        
        //the valueboxes
        valsgrid = uiz_grid_create(4, 3)
        uiz_setParent(valsgrid, valsels)
        uiz_fixgridpos(valsgrid)
        uiz_setGridObjects_canvas(valsgrid)
        uiz_gridSize_col(valsgrid, 0, 0.1, fc)
        uiz_gridSize_col(valsgrid, 1, 0.4, fc)
        uiz_gridSize_col(valsgrid, 2, 0.1, fc)
        uiz_gridSize_col(valsgrid, 3, 0.4, fc)
        //uiz_setGridObjects_frame(valsgrid)
        uiz_fixgridpos(valsgrid)

        valredtext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valredtext, uiz_gridObject(valsgrid, 0, 0))
        valredtext.posinframex = uiz_fill
        valredtext.posinframey = uiz_fill
        valredtext.text = "r"
        uiz_fixgeneralpos(valredtext)

        valgreentext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valgreentext, uiz_gridObject(valsgrid, 0, 1))
        valgreentext.posinframex = uiz_fill
        valgreentext.posinframey = uiz_fill
        valgreentext.text = "g"
        uiz_fixgeneralpos(valgreentext)

        valbluetext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valbluetext, uiz_gridObject(valsgrid, 0, 2))
        valbluetext.posinframex = uiz_fill
        valbluetext.posinframey = uiz_fill
        valbluetext.text = "b"
        uiz_fixgeneralpos(valbluetext)

        valred = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(valred, uiz_gridObject(valsgrid, 1, 0))
        valred.acceptOnlyNumbers = true;
        valred.acceptOnlyIntegers = true;
        valred.acceptOnlyPositive = true;
        valred.numberCounter_enable = true;
        valred.posinframex = uiz_fill
        valred.posinframey = uiz_center
        valred.posvalh = 0.3
        valred.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(valred,0,true,255,true);
        valred.allowdec = 0
        var argsr;
        argsr[1] = 0;//for red
        argsr[0] = id;
        uiz_update_set(valred,uiz_colorbox_onUpdateStringboxRGB,argsr);
        uiz_stringbox_setvalue(valred, string(r))
        uiz_fixgeneralpos(valred)

        valgreen = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(valgreen, uiz_gridObject(valsgrid, 1, 1))
        valgreen.acceptOnlyNumbers = true;
        valgreen.acceptOnlyIntegers = true;
        valgreen.acceptOnlyPositive = true;
        valgreen.numberCounter_enable = true;
        valgreen.posinframex = uiz_fill
        valgreen.posinframey = uiz_center
        valgreen.posvalh = 0.3
        valgreen.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(valgreen,0,true,255,true);
        valgreen.allowdec = 0
        var argsg;
        argsg[1] = 1;//for green
        argsg[0] = id;
        uiz_update_set(valgreen,uiz_colorbox_onUpdateStringboxRGB,argsg);
        uiz_stringbox_setvalue(valgreen, string(g))
        uiz_fixgeneralpos(valgreen)

        valblue = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(valblue, uiz_gridObject(valsgrid, 1, 2))
        valblue.acceptOnlyNumbers = true;
        valblue.acceptOnlyIntegers = true;
        valblue.acceptOnlyPositive = true;
        valblue.numberCounter_enable = true;
        valblue.posinframex = uiz_fill
        valblue.posinframey = uiz_center
        valblue.posvalh = 0.3
        valblue.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(valblue,0,true,255,true);
        valblue.allowdec = 0
        var argsb;
        argsb[1] = 2;//for blue
        argsb[0] = id;
        uiz_update_set(valblue,uiz_colorbox_onUpdateStringboxRGB,argsb);
        uiz_stringbox_setvalue(valblue, string(b))
        uiz_fixgeneralpos(valblue)




        //hsv valueboxes
        valhtext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valhtext, uiz_gridObject(valsgrid, 2, 0))
        valhtext.posinframex = uiz_fill
        valhtext.posinframey = uiz_fill
        valhtext.text = "h"
        uiz_fixgeneralpos(valhtext)

        valstext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valstext, uiz_gridObject(valsgrid, 2, 1))
        valstext.posinframex = uiz_fill
        valstext.posinframey = uiz_fill
        valstext.text = "s"
        uiz_fixgeneralpos(valstext)

        valvtext = uiz_c(obj_uiZ_drawtext)
        uiz_setParent(valvtext, uiz_gridObject(valsgrid, 2, 2))
        valvtext.posinframex = uiz_fill
        valvtext.posinframey = uiz_fill
        valvtext.text = "v"
        uiz_fixgeneralpos(valvtext)

        valh = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(valh, uiz_gridObject(valsgrid, 3, 0))
        valh.acceptOnlyNumbers = true;
        valh.acceptOnlyIntegers = true;
        valh.acceptOnlyPositive = true;
        valh.numberCounter_enable = true;
        valh.posinframex = uiz_fill
        valh.posinframey = uiz_center
        valh.posvalh = 0.3
        valh.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(valh,0,true,255,true);
        valh.allowdec = 0
        uiz_update_set(valh,uiz_colorbox_onUpdateStringboxHSV,argsr);
        uiz_stringbox_setvalue(valh, string(h))
        uiz_fixgeneralpos(valh)

        vals = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(vals, uiz_gridObject(valsgrid, 3, 1))
        vals.acceptOnlyNumbers = true;
        vals.acceptOnlyIntegers = true;
        vals.acceptOnlyPositive = true;
        vals.numberCounter_enable = true;
        vals.posinframex = uiz_fill
        vals.posinframey = uiz_center
        vals.posvalh = 0.3
        vals.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(vals,0,true,255,true);
        vals.allowdec = 0
        uiz_update_set(vals,uiz_colorbox_onUpdateStringboxHSV,argsg);
        uiz_stringbox_setvalue(vals, string(s))
        uiz_fixgeneralpos(vals)

        valv = uiz_c(obj_uiZ_stringbox)
        uiz_setParent(valv, uiz_gridObject(valsgrid, 3, 2))
        valv.acceptOnlyNumbers = true;
        valv.acceptOnlyIntegers = true;
        valv.acceptOnlyPositive = true;
        valv.numberCounter_enable = true;
        valv.posinframex = uiz_fill
        valv.posinframey = uiz_center
        valv.posvalh = 0.3
        valv.posvalhtype = dp
        uiz_stringbox_setNumericalValueBounds(valv,0,true,255,true);
        valv.allowdec = 0
        uiz_update_set(valv,uiz_colorbox_onUpdateStringboxHSV,argsb);
        uiz_stringbox_setvalue(valv, string(v))
        uiz_fixgeneralpos(valv)
        uiz_colorbox_updatergb(1, 1, 1, 0, 0)
        //*/
        //last fix
        uiz_fixChildren(w, 1)
        //c.color=value
        //uiz_colorbox_updatergb(1,1,1)
    }
}
if kmouseover > 0 then {
    uiz_set_cursor(cr_handpoint)
}

/* */
/*  */
