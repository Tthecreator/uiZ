if draw and uiz_cntn() then{
    var ux, uwidth, uy, uheight
    var h = 0//-thickness / 2;
    draw_set_alpha(alpha)
    draw_set_color(color)
    for (var i = 0; i < divisions - 1; i++) {
        h += isz[i]
        if hasBar[i] then {
            uy = 0
            uheight = height
            //get the y of the frames

            ux = h
            uwidth = thickness
            if parent.object_index = obj_uiZ_framerowanchor then {
                var nwidth = uwidth
                var nheight = uheight
                var nrx = rx + ux
                //var nry=ry+uy
                if inlistpos > 0 and parent.hasBar[inlistpos - 1] then {
                    var nry = ry + uy //+parent.thickness/2
                    if spriteconnectiontop != 0 then {
                        var simg;
                        if global.mouseover = id and overframebar = i then {
                            if kmouseover>=uiz_mouseclick then {
                                simg = 2
                            } else {
                                simg = 1
                            }
                        } else {
                            if global.mouseover = parent.id and parent.overframebar = inlistpos - 1 then {
                                if parent.kmouseover>=uiz_mouseclick then {
                                    simg = 4
                                } else {
                                    simg = 3
                                }
                            } else {
                                simg = 0
                            }
                        }


                        draw_sprite_ext(spriteconnectiontop, simg, nrx, ry + uy - parent.thickness, thickness / sprite_get_width(spriteconnectiontop), parent.thickness / sprite_get_height(spriteconnectiontop), 0, c_white, 1)
                    }
                } else {
                    var nry = ry + uy
                }

                var nrlx = rx + ux + uwidth
                //var nrly=ry+uy+uheight

                if inlistpos + 1 < parent.divisions and parent.hasBar[inlistpos] then {
                    var nrly = ry + uy + uheight// - parent.thickness / 2
                    if spriteconnectionbottom != 0 then {
                        if global.mouseover = id and overframebar = i then {
                            if kmouseover>=uiz_mouseclick then {
                                simg = 2
                            } else {
                                simg = 1
                            }
                        } else {
                            if global.mouseover = parent.id and parent.overframebar = inlistpos then {
                                if parent.kmouseover>=uiz_mouseclick then {
                                    simg = 4
                                } else {
                                    simg = 3
                                }
                            } else {
                                simg = 0
                            }
                        }

                        draw_sprite_ext(spriteconnectionbottom, simg, nrx, nrly, thickness / sprite_get_width(spriteconnectionbottom), parent.thickness / sprite_get_height(spriteconnectionbottom), 0, c_white, 1)
                    }
                } else {
                    var nrly = ry + uy + uheight
                }


            } else {
                var nwidth = uwidth
                var nheight = uheight
                var nrx = rx + ux
                var nry = ry + uy
                var nrlx = rx + ux + uwidth
                var nrly = ry + uy + uheight
            }
            if sprite != 0 then {
                var nsw = sprite_get_width(sprite)
                var nsh = sprite_get_height(sprite)
                switch (texturemode_horizontal) {
                    case uiz_texturemode_fill:
                        var szx = 1
                        break;
                    case uiz_texturemode_tile:
                        var szx = nwidth / nsw
                        break;
                    case uiz_texturemode_tilefit:
                        var szx = round(nwidth / nsw);
                        break;
                    default:
                        szx = 1
                }
                switch (texturemode_vertical) {
                    case uiz_texturemode_fill:
                        var szy = 1
                        break;
                    case uiz_texturemode_tile:
                        var szy = nheight / nsh
                        break;
                    case uiz_texturemode_tilefit:
                        var szy = round(nheight / nsh);
                        break;
                    default:
                        szy = 1
                }
                //top
                
                if mouseover = id and overframebar = i then {
                    if kmouseover>=uiz_mouseclick then {
                        tex = 2
                    } else {
                        tex = 1
                    }
                } else {
                    tex = 0
                }
                
                uiz_draw_sprite_tiles(sprite, tex, nrx, nry, nrlx, nrly, szx, szy, color, alpha, 0, 0);

            } else {
                draw_square(nrx, nry, nrlx, nrly, color, alpha)
            }
        }
    }
uiz_containend()
}

