if uiz_cntn() then {
    if ds_exists(uselist, ds_type_list) then {
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_set_color(c_black)
        draw_set_alpha(1)

        //var h=margin
        var h = starth
        var strh;
        if endlistat >= ds_list_size(uselist) then {
            endlistat = ds_list_size(uselist) - 1;
        }
        //var pcum=updater_new+updater_old;
        var pcu = min(1, updater_new + updater_old + 2);
        if uiz_selfmarked = false then {
            pcu = false;
        }
        var uo = updater_old;
        var un = updater_new;
        for (var i = startlistat; i <= endlistat; i++) {
            if pcu = true then {
                if updater_old != -1 then {
                    i = updater_old;
                    h = ar_sel_oy - addy - ry;
                    updater_old = -1;
                    if endlistat = i then {
                        endlistat++;
                    }
                } else {
                    if updater_new != -1 then {
                        i = updater_new;
                        h = ar_sel_ny - addy - ry;
                        updater_new = -1;
                        if endlistat >= ds_list_size(uselist) then {
                            endlistat = ds_list_size(uselist) - 1;
                        }
                    } else {
                        break;
                    }
                }
            }
            strh = string_height(string_hash_to_newline(string(uselist[| i])))
            //if addy+h+strh>0 then{
            //check if selected
            var ucolor = color;
            if sel = i then {
                ucolor = oncolor
            }
            if keepselected = i or (selected = i) then {
                ucolor = clickcolor
            }
            draw_square(rx, ry + addy + h, rlx - (scrollwidth + 1) * doscroll, ry + h + addy + strh, ucolor, 1)
            draw_set_color(c_black)
            if usesprlist != -1 then {
                //draw_text(rx+strh+margin*2,ry+h+addy,uiz_getText_contained(uselist[| i],width-strh-margin*2-(scrollwidth+1)*doscroll))
                if useimglist != -1 then {
                    var vusespr = usesprlist[| i];
                    if !(vusespr = undefined) then {
                        draw_sprite_ext(vusespr, useimglist[| i], rx + margin, ry + h + addy, strh / sprite_get_width(vusespr), strh / sprite_get_height(vusespr), 0, c_white, 1)
                    }
                } else {
                    var vusespr = usesprlist[| i]
                    if sprite_exists(vusespr) then {
                        draw_sprite_ext(vusespr, 0, rx + margin, ry + h + addy, strh / sprite_get_width(vusespr), strh / sprite_get_height(vusespr), 0, c_white, 1)
                    }
                }
            } else {

                //draw_text(rx,ry+h+addy,uiz_getText_contained(uselist[| i],width-(scrollwidth+1)*doscroll))
            }
            //}
            if addy + h > parent.height then {
                break;
            }
            h += margin + strh
        }

        draw_set_color(textcolor);
        var h = starth;
        for (var i = startlistat; i <= endlistat; i++) {
            if pcu = true then {
                if uo != -1 then {
                    i = uo;
                    h = ar_sel_oy - addy - ry;
                    uo = -1;
                    if endlistat = i then {
                        endlistat++;
                    }
                } else {
                    if un != -1 then {
                        i = un;
                        h = ar_sel_ny - addy - ry;
                        un = -1;
                        if endlistat >= ds_list_size(uselist) then {
                            endlistat = ds_list_size(uselist) - 1;
                        }
                    } else {
                        break;
                    }
                }
            }
            strh = string_height(string_hash_to_newline(string(uselist[| i])))

            if usesprlist != -1 then {
                draw_text(rx + strh + margin * 2, ry + h + addy, string_hash_to_newline(uiz_getText_contained(uselist[| i], width - strh - margin * 2 - (scrollwidth + 1) * doscroll)))
            } else {
                draw_text(rx, ry + h + addy, string_hash_to_newline(uiz_getText_contained(uselist[| i], width - (scrollwidth + 1) * doscroll)))
            }
            h += margin + strh
        }

    }
    if doscroll = true and(updatescroll = true or uiz_selfmarked = false) then {
        uiz_drawscrollbar_vertical_draw(rlx - scrollwidth + 1, ry, rlx, rly, scrollbarsprite, scrollbarcolor, scrollbarbacktexmode, scroll, scrollheight)
        updatescroll = false;
    }

    uiz_containend()
}

///BACKUP
/*
//if containin=0 then{var ucontainin=containtowhosparent.parent}else{var ucontainin=containin}
if uiz_cntn() then{
if ds_exists(uselist,ds_type_list) then{
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_alpha(1)

//var h=margin
var h=starth
var strh;
selected=-1
if endlistat>=ds_list_size(uselist) then{endlistat=ds_list_size(uselist)-1;}
for(var i=startlistat;i<=endlistat;i++){
strh=string_height(string(uselist[| i]))
//if addy+h+strh>0 then{
//check if selected
ucolor=color;
if sel=i or (global.mouseoverobject=id and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),sx,sy+addy+h,slx-scrollbarwidth,sy+h+addy+strh)) then{selected=i
if sel=i then{ucolor=clickcolor}
if mouse_check_button(mb_left) then{if sel=-1 then{if keepselection=1 then{keepselected=i} global.mousefrozen=1 sel=i var ucolor=clickcolor}}else{sel=-1;global.mousefrozen=0; var ucolor=oncolor}}else{var ucolor=color}
if keepselected=i then{ucolor=clickcolor}
draw_square(rx,ry+addy+h,rlx-scrollbarwidth,ry+h+addy+strh,ucolor,1)
draw_set_color(c_black)
if usesprlist!=-1 then{
draw_text(rx+strh+margin*2,ry+h+addy,uiz_getText_contained(uselist[| i],width-strh-margin*2))
if useimglist!=-1 then{
var vusespr=usesprlist[| i];
if !(vusespr=undefined) then{
draw_sprite_ext(vusespr,useimglist[| i],rx+margin,ry+h+addy,strh/sprite_get_width(vusespr),strh/sprite_get_height(vusespr),0,c_white,1)
}
}else{
var vusespr=usesprlist[| i]
if sprite_exists(vusespr) then{
draw_sprite_ext(vusespr,0,rx+margin,ry+h+addy,strh/sprite_get_width(vusespr),strh/sprite_get_height(vusespr),0,c_white,1)
}
}
}else{
draw_text(rx,ry+h+addy,uiz_getText_contained(uselist[| i],width))
}
//}
if addy+h>parent.height then{break;}
h+=margin+strh
}
}

//draw a scrollbar
if scrollbarwidth>0 and scrollbarsprite!=0 then{
var simg;
var p=parent
sw=scrollbarwidth/sprite_get_width(scrollbarsprite)
sh=scrollbarwidth/sprite_get_height(scrollbarsprite)
simg=3
if global.mouseoverobject=id and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),p.slx-scrollbarwidth,p.sy,p.slx,p.sy+scrollbarwidth) then{
uiz_set_cursor(cr_drag)
simg++
if mouse_check_button(mb_left){simg++}
if mouse_check_button_released(mb_left){fromscroll=scroll;count=0;toscroll-=scrollspeed/height;toscroll=max(0,min(1,toscroll));}
}
draw_sprite_ext(scrollbarsprite,simg,p.rlx-scrollbarwidth,p.ry,sw,sh,0,scrollbarcolor,1)
simg=0
if global.mouseoverobject=id and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),p.slx-scrollbarwidth,p.sly-scrollbarwidth,p.slx,p.sly) then{
uiz_set_cursor(cr_drag)
simg++
if mouse_check_button(mb_left){simg++}
if mouse_check_button_released(mb_left){fromscroll=scroll;count=0;toscroll+=scrollspeed/height;toscroll=max(0,min(1,toscroll));}
}
draw_sprite_ext(scrollbarsprite,simg,p.slx-scrollbarwidth,p.sly-scrollbarwidth,sw,sh,0,scrollbarcolor,1)

//draw the background
var nwidth=scrollbarwidth
var nheight=p.height-scrollbarwidth*2
switch(scrollbarbacktexmode){
case uiz_texturemode_fill:
var szx=1
var szy=1
break;
case uiz_texturemode_tile:
var szx=nwidth/sprite_get_width(scrollbarsprite)
var szy=nheight/sprite_get_height(scrollbarsprite)
break;
case uiz_texturemode_tilefit:
var szx=round(nwidth/sprite_get_width(scrollbarsprite));
var szy=round(nheight/sprite_get_height(scrollbarsprite));
break;
default:
szx=1
szy=1
}
draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(scrollbarsprite,16))
draw_vertex_texture(p.rlx-scrollbarwidth,p.ry+scrollbarwidth,0,0)
draw_vertex_texture(p.rlx,p.ry+scrollbarwidth,szx,0)
draw_vertex_texture(p.rlx-scrollbarwidth,p.rly-scrollbarwidth,0,szy)
draw_vertex_texture(p.rlx,p.rly-scrollbarwidth,szx,szy)
draw_primitive_end()
//draw the bar
barheight=p.height-scrollbarwidth*2
barsize=min(barheight,max(50,(parent.height/height)*barheight));
//var barsize=(parent.height/height)*(height-scrollbarwidth*2);
//dbm(barsize)
//scroll=parent.height/2;
oversize=barheight-barsize//-scrollbarwidth
sscroll=oversize*scroll
simg=0
if scrollsel=1 or (global.mouseoverobject=id and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),p.slx-scrollbarwidth,p.sy+scrollbarwidth+sscroll,p.slx,p.sy+sscroll+barsize)) then{
simg++
if mouse_check_button(mb_left){
global.mousefrozen=1
scrollsel=1
simg++
scroll=(sscroll-global.lastmousemovedy)/oversize
scroll=max(0,min(1,scroll))
addy=min(0,-scroll*(height-parent.height))
checkuplist=1
}else{
if scrollsel=1 then{scrollsel=0;global.mousefrozen=0}
}
//if mouse_check_button_released(mb_left){fromscroll=scroll;count=0;toscroll-=scrollspeed/height;toscroll=max(0,min(1,toscroll));}
}

draw_sprite_ext(scrollbarsprite,6+simg,p.rlx-scrollbarwidth,p.ry+scrollbarwidth+sscroll,sw,sh,0,c_white,1)

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(scrollbarsprite,12+simg))
draw_vertex_texture(p.rlx-scrollbarwidth,p.ry+scrollbarwidth*2+sscroll,0,0)
draw_vertex_texture(p.rlx,p.ry+scrollbarwidth*2+sscroll,1,0)
draw_vertex_texture(p.rlx-scrollbarwidth,p.ry+sscroll+barsize,0,1)
draw_vertex_texture(p.rlx,p.ry+sscroll+barsize,1,1)
draw_primitive_end()


draw_sprite_ext(scrollbarsprite,9+simg,p.rlx-scrollbarwidth,p.ry+sscroll+barsize,sw,sh,0,c_white,1)
//var uiy=(p.ry+scrollbarwidth+sscroll)+((p.ry+sscroll+barsize+scrollbarwidth)-(p.ry+scrollbarwidth+sscroll))/2-scrollbarwidth/2
//var uiy=(p.ry+scrollbarwidth+sscroll)+(barsize-scrollbarwidth)/2//-scrollbarwidth/2
draw_sprite_ext(scrollbarsprite,15,p.rlx-scrollbarwidth,(p.ry+scrollbarwidth+sscroll)+(barsize-scrollbarwidth)/2,sw,sh,0,c_white,1)

}
uiz_containend()
}




/* */
/*  */
