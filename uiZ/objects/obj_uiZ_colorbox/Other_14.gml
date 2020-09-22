if global.colorscreen=id and !instance_exists(w) then{global.colorscreen=0}
//if global.colorscreen=id and instance_exists(w) then{
//if w.finaldestroy=1 then{global.colorscreen=0}
//}
if global.colorscreen!=id or !instance_exists(w) then{
    uiz_updater_unstep();
    exit;
}

///add to list if color is pressed and check if new value is pressed

globalvar colorlist;
if c.kmouseover=3 then{
//show_message("omg")
uiz_colorbox_checkcolordump()
ds_list_add(colorlist,c.color)
uiz_updater_FixViews_with(colorboxes);
}

//check if something is pressed
if colorboxes.updated=1 then{
if colorboxes.sz>colorboxes.selpos then{

c.color=colorlist[| colorboxes.selected]
uiz_updater_FixViews_with(c);
value = c.color;
uiz_updater_FixViews();
uiz_colorbox_update_rgb();
uiz_colorbox_update_hsv();
uiz_huesquare_setcolor_hsv(uh,h,s,v);
uiz_colorbox_updateSliderColors(true,true,true,true);
uiz_colorbox_updateValues(true,true,true,true);
//uiz_colorbox_updatergb(1,1,1)
//boxval.value=color_get_value(c.color)

/*
h=color_get_hue(c.color)
s=color_get_saturation(c.color)
v=color_get_value(c.color)
r=color_get_red(c.color)
g=color_get_green(c.color)
b=color_get_blue(c.color)
uiz_colorbox_updatergb(1,1,1,1,0)
*/

//uiz_hue_setvalues(uh,h,s,v)
/*
uh.h=color_get_hue(c.color)
uh.s=color_get_saturation(c.color)
boxval.value=color_get_value(c.color)/255
//h.s=color_get_saturation(c.color)
boxval.color1 = make_color_hsv(h, s, 0);
boxval.color2 = make_color_hsv(h, s, 255);
uiz_updater_FixViews_with(boxval);
*/

}}


/* */
///set new color if window is opened
/*
    if (boxred.updated = 1 or boxblue.updated = 1 or boxgreen.updated = 1) then {
        HueMoves = -1;
    }
    
    //sdbm("uh value: ",uh.update);
    //var hueUpdated = false;
    //*
    if (uh.update = 1 and HueMoves >= 0) or uh.selected = 1 then {
    //*
        //hueUpdated = true;
        sdbm("uh update",uh.inh,uh.ins);
        c.color = uh.incolor;
        uiz_updater_FixViews_with(c);
        h = uh.inh;
        s = uh.ins;
        boxval.color1 = make_color_hsv(h, s, 0);
        boxval.color2 = make_color_hsv(h, s, 255);
        uiz_updater_FixViews_with(boxval);
        //if HueMoves=false then{
        c.color = uh.tocolor;
        
        c.color = uh.incolor;
        //uiz_slider_setvalue(boxval, v / 255)
        //}
        HueMoves = true;
        if updated then{
            uiz_stringbox_setvalue(valh,h)
            uiz_stringbox_setvalue(vals,s)
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
        }
        
    } else {
        HueMoves = false;
    }
    //*/
    //HueMoves = false;
    
    //get updates, prevent from one update to trigger another (unnecessary update)
    /*
    var boxred_updated = boxred.updated;
    var boxgreen_updated = boxgreen.updated;
    var boxblue_updated = boxblue.updated;
    var valred_update = valred.update;
    var valgreen_update = valgreen.update;
    var valblue_update = valblue.update;
    var valh_update = valh.update;
    var vals_update = vals.update;
    var valv_update = valv.update;
    if HueMoves = false then {
    
        if !boxred_updated and !boxgreen_updated and !boxblue_updated then{
            if boxval.updated = true then {
                c.color = make_color_hsv(uh.h, uh.s, boxval.value * 255)
                uiz_updater_FixViews_with(c);
                uh.v = boxval.value * 255;
                v = uh.v;
                uiz_updater_FixViews_with(uh);
                //sdbm("val",boxval.invalue,v)
                uiz_colorbox_updatergb(1, 1, 1, 1, 0)
                c.color = make_color_hsv(uh.h, uh.s, boxval.invalue * 255)
                uiz_stringbox_setvalue(valv,v);
            }
            if boxval.update = true then {
                c.color = make_color_hsv(uh.h, uh.s, boxval.invalue * 255)
            }
        }
        if boxval.updated = false then {
        ///*
            if boxred_updated = true then {
                r = boxred.value * 255;
                c.color = make_color_rgb(r, g, b);
                uiz_updater_FixViews_with(c);
                h = colour_get_hue(c.color);
                s = colour_get_saturation(c.color);
                v = colour_get_value(c.color);
                if uh.kmouseover<uiz_mouseclick then{
                    uiz_hue_setvalues(uh, h, s, v);
                    uiz_updater_FixViews_with(uh);
                }
                uiz_slider_setvalue(boxval, v / 255)
                boxval.color1 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 0);
                boxval.color2 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 255);
                uiz_updater_FixViews_with(boxval);
                uiz_colorbox_updatergb(0, 1, 1, 0, 0)
                uiz_stringbox_setvalue(valred,r)
                uiz_stringbox_setvalue(valh,h)
                uiz_stringbox_setvalue(vals,s)
                uiz_stringbox_setvalue(valv,v)
            }
            if boxgreen_updated = true then {
                g = boxgreen.value * 255;
                c.color = make_color_rgb(r, g, b);
                uiz_updater_FixViews_with(c);
                h = colour_get_hue(c.color);
                s = colour_get_saturation(c.color);
                v = colour_get_value(c.color);
                if uh.kmouseover<uiz_mouseclick then{
                    uiz_hue_setvalues(uh, h, s, v);
                    uiz_updater_FixViews_with(uh);
                }
                uiz_slider_setvalue(boxval, v / 255)
                boxval.color1 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 0);
                boxval.color2 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 255);
                uiz_updater_FixViews_with(boxval);
                uiz_colorbox_updatergb(1, 0, 1, 0, 0)
                uiz_stringbox_setvalue(valgreen,g)
                uiz_stringbox_setvalue(valh,h)
                uiz_stringbox_setvalue(vals,s)
                uiz_stringbox_setvalue(valv,v)
                
            }
            if boxblue_updated = true then {
                b = boxblue.value * 255;
                c.color = make_color_rgb(r, g, b);
                uiz_updater_FixViews_with(c);
                h = colour_get_hue(c.color);
                s = colour_get_saturation(c.color);
                v = colour_get_value(c.color);
                if uh.kmouseover<uiz_mouseclick then{
                    uiz_hue_setvalues(uh, h, s, v);
                    uiz_updater_FixViews_with(uh);
                }
                uiz_slider_setvalue(boxval, v / 255)
                boxval.color1 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 0);
                boxval.color2 = make_color_hsv(colour_get_hue(uh.color), colour_get_saturation(uh.color), 255);
                uiz_updater_FixViews_with(boxval);
                uiz_colorbox_updatergb(1, 1, 0, 0, 0)
                uiz_stringbox_setvalue(valblue,b)
                uiz_stringbox_setvalue(valh,h)
                uiz_stringbox_setvalue(vals,s)
                uiz_stringbox_setvalue(valv,v)
            }
        }
        
    }
    
    //valueboxes
    if boxval.updated = false then {
        if valred_update = 1 then {
            r = real(uiz_stringbox_getvalue(valred));
            c.color = make_color_rgb(r, g, b);
            uiz_updater_FixViews_with(c);
            h = colour_get_hue(c.color);
            s = colour_get_saturation(c.color);
            v = colour_get_value(c.color);
            //uiz_hue_setvalues(uh, h, s, v)
            uiz_slider_setvalue(boxval, v / 255)
            boxval.color1 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 0);
            boxval.color2 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 255);
            uiz_updater_FixViews_with(boxval);
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valh,h)
            uiz_stringbox_setvalue(vals,s)
            uiz_stringbox_setvalue(valv,v)
            //uiz_updater_FixViews_with(uh);
        }
    
        //sdbm("doing update check");
        if valgreen_update = 1 then {
            g = real(uiz_stringbox_getvalue(valgreen));
            c.color = make_color_rgb(r, g, b);
            uiz_updater_FixViews_with(c);
            h = colour_get_hue(c.color);
            s = colour_get_saturation(c.color);
            v = colour_get_value(c.color);
            //uiz_hue_setvalues(uh, h, s, v)
            uiz_slider_setvalue(boxval, v / 255)
            boxval.color1 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 0);
            boxval.color2 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 255);
            uiz_updater_FixViews_with(boxval);
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valh,h)
            uiz_stringbox_setvalue(vals,s)
            uiz_stringbox_setvalue(valv,v)
            //uiz_updater_FixViews_with(uh);
        }
    
        if valblue_update = 1 then {
            b = real(uiz_stringbox_getvalue(valblue));
            c.color = make_color_rgb(r, g, b);
            uiz_updater_FixViews_with(c);
            h = colour_get_hue(c.color);
            s = colour_get_saturation(c.color);
            v = colour_get_value(c.color);
            //uiz_hue_setvalues(uh, h, s, v)
            uiz_slider_setvalue(boxval, v / 255)
            boxval.color1 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 0);
            boxval.color2 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 255);
            uiz_updater_FixViews_with(boxval);
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valh,h)
            uiz_stringbox_setvalue(vals,s)
            uiz_stringbox_setvalue(valv,v)
            //uiz_updater_FixViews_with(uh);
        }
        if valh_update = 1 then {
            h = real(uiz_stringbox_getvalue(valh));
            c.color = make_color_hsv(h, s, v);
            uiz_updater_FixViews_with(c);
            r = colour_get_red(c.color);
            g = colour_get_green(c.color);
            b = colour_get_blue(c.color);
            //uiz_hue_setvalues(uh, h, s, v)
            boxval.color1 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 0);
            boxval.color2 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 255);
            uiz_updater_FixViews_with(boxval);
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valred,r)
            uiz_stringbox_setvalue(valgreen,g)
            uiz_stringbox_setvalue(valblue,b)
            //uiz_updater_FixViews_with(uh);
        }
        if vals_update = 1 then {
            s = real(uiz_stringbox_getvalue(vals));
            c.color = make_color_hsv(h, s, v);
            uiz_updater_FixViews_with(c);
            r = colour_get_red(c.color);
            g = colour_get_green(c.color);
            b = colour_get_blue(c.color);
            //uiz_hue_setvalues(uh, h, s, v)
            boxval.color1 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 0);
            boxval.color2 = make_color_hsv(colour_get_hue(uh.incolor), colour_get_saturation(uh.incolor), 255);
            uiz_updater_FixViews_with(boxval);
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valred,r)
            uiz_stringbox_setvalue(valgreen,g)
            uiz_stringbox_setvalue(valblue,b)
            //uiz_updater_FixViews_with(uh);
        }
        
        if valv_update = 1 then {
            v = real(uiz_stringbox_getvalue(valv));
            c.color = make_color_hsv(h, s, v);
            uiz_updater_FixViews_with(c);
            r = colour_get_red(c.color);
            g = colour_get_green(c.color);
            b = colour_get_blue(c.color);
            uiz_hue_setvalues(uh, h, s, v)
            uiz_colorbox_updatergb(1, 1, 1, 1, 0);
            uiz_stringbox_setvalue(valred,r)
            uiz_stringbox_setvalue(valgreen,g)
            uiz_stringbox_setvalue(valblue,b)
            uiz_slider_setvalue(boxval,v/255)
            uiz_updater_FixViews_with(uh);
        }
    }
    
    //check for changes, and apply them
    if (lastvalue != c.color) then{
        uiz_updater_FixViews_with(c);
    }
    lastvalue = value
    value = c.color
    if (lastvalue = value) then {
        //updated=0;
        //}else{updated=1}
        update = 0;
    } else {
        update = 1
    }
    
    boxred.updated = false
    boxblue.updated = false
    boxgreen.updated = false

if update = 1 or updated = 1 then {
    uiz_updater_FixViews();
}
*/

/* */
///handle buttons and such
if uh.updated then {
    h = uh.h;
    s = uh.s;
    c.color = make_color_hsv(h,s,v);
    uiz_updater_FixViews_with(c);
    value = c.color;
    uiz_updater_FixViews();
    uiz_colorbox_update_rgb();
    uiz_colorbox_updateSliderColors(true,true,true,true);
    uiz_stringbox_setvalue_noupdate(valh,h);
    uiz_stringbox_setvalue_noupdate(vals,s);
    uiz_colorbox_updateValues(false,true,true,true);
}

if boxval.updated then{
    v = boxval.value * 255;
    c.color = make_color_hsv(h,s,v);
    uiz_updater_FixViews_with(c);
    value = c.color;
    uiz_updater_FixViews();
    uiz_huesquare_setcolor_hsv(uh,h,s,v);
    uiz_updater_FixViews_with(uh);
    uiz_colorbox_update_rgb();
    uiz_colorbox_updateSliderColors(false,true,true,true);
    uiz_stringbox_setvalue_noupdate(valv,v);
    uiz_colorbox_updateValues(false,true,true,true);
}

if boxred.updated then{
    r = boxred.value * 255;
    c.color = make_color_rgb(r,g,b);
    uiz_updater_FixViews_with(c);
    value = c.color;
    uiz_updater_FixViews();
    uiz_colorbox_update_hsv();
    uiz_huesquare_setcolor_hsv(uh,h,s,v);
    uiz_colorbox_updateSliderColors(true,false,true,true);
    uiz_stringbox_setvalue_noupdate(valred,r);
    uiz_colorbox_updateValues(true,false,true,true);
}

if boxgreen.updated then{
    g = boxgreen.value * 255;
    c.color = make_color_rgb(r,g,b);
    uiz_updater_FixViews_with(c);
    value = c.color;
    uiz_updater_FixViews();
    uiz_colorbox_update_hsv();
    uiz_huesquare_setcolor_hsv(uh,h,s,v);
    uiz_colorbox_updateSliderColors(true,true,false,true);
    uiz_stringbox_setvalue_noupdate(valgreen,g);
    uiz_colorbox_updateValues(true,true,false,true);
}

if boxblue.updated then{
    b = boxblue.value * 255;
    c.color = make_color_rgb(r,g,b);
    uiz_updater_FixViews_with(c);
    value = c.color;
    uiz_updater_FixViews();
    uiz_colorbox_update_hsv();
    uiz_huesquare_setcolor_hsv(uh,h,s,v);
    uiz_colorbox_updateSliderColors(true,true,true,false);
    uiz_stringbox_setvalue_noupdate(valblue,b);
    uiz_colorbox_updateValues(true,true,true,false);
}

/* */
/*  */
