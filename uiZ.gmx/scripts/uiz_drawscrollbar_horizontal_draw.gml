///uiz_drawscrollbar_horizontal_draw(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,scroll,scrolllines)
//return new value of scroll;
//object from which this is called from does need to be a uiz object, due to mouse checks.
/*
Will draw a scrollbar.
The "scroll=" part is important, see argument 7
Can create some weird effects if the vertical versions width is bigger than its height, and also if the height is bigger than then width for the horizontal version.
If not sure of the size use "uiz_drawscrollbar" which does a check which direction the scrollbar fits the best. 0-3: position: From where to where the bar would be drawn, in real x coordinates.
4-scrollbarsprite: which sprite to use. The sprite should follow a few rules, listen further down in this page. 5-scrollbarcolor: which color blend the sprite should get.(may not apply to all parts)
6-scrollbacktexturemode: How sprites should be stretched/tiled. You can choose the constants: uiz_texturemode_fill, uiz_texturemode_tile, uiz_texturemode_tilefit.
7-scroll: A special value that should be the same variable as returned by the draw_scrollbar_ function. This is value that holds mouse data, and scrolldata.
On the scroll variable you can use "uiz_scrollbar_setvalue" and "uiz_scrollbar_getvalue" (same as "uiz_positify").
8-scrolllines: How many steps the scrollbar has. If you're drawing out a list, then this would be: "(your list size)-(how many list items fit on my object without scrolling)"


A valid scrollbar sprite holds the following images:
0. A button down sprite that also acts as a right button on horizontal scrollbars.
1. The same as 0, but then when the mouse hovers over it.
2. The same as 0, but then when the mouse clicks it.
3. A button up sprite that also acts as a left button on horizontal scrollbars.
4. The same as 3, but then when the mouse hovers over it.
5. The same as 3, but then when the mouse clicks it.
6.The top/left part of a scrollbar.
7. The same as 6, but then when the mouse hovers over it.
8. The same as 6, but then when the mouse clicks it.
9.The bottom/right part of a scrollbar.
10. The same as 9, but then when the mouse hovers over it.
11. The same as 9, but then when the mouse clicks it.
12.The middle part of a vertical scrollbar.
13. The same as 12, but then when the mouse hovers over it.
14. The same as 12, but then when the mouse clicks it.
15: A sprite to put on the middle of the scrollbar.
16: A background sprite for behind the scrollbar.
17.The middle part of a horizontal scrollbar.
18. The same as 17, but then when the mouse hovers over it.
19. The same as 17, but then when the mouse clicks it.

Note: you can use spr_uiZ_scrollbar as a reference.


mstate codes:
.0-none
.1-left over
.2-left click
.3-right over
.4-right click
.5-bar over
.6-bar click
*/
//argument7=50
//argument8=100

var updated_o = uiz_drawscrollbar_getUpdated(argument7);
var updated;
var update_bar = false;
if updated_o > 0 or uiz_selfmarked = false then {
    if updated_o = 4 then {
        updated = false;
    } else {
        if updated_o = 5 then {
            update_bar = true;
        }
        updated = uiz_selfmarked;
    }

    var width = round(argument2 - argument0);
    var height = round(argument3 - argument1);
    var y0 = floor(argument1);
    var y1 = y0 + height;
    var x0 = argument0;
    var x1 = argument0 + height;
    var x2 = argument2 - height;
    var x3 = argument2;
    var sel = 0;
    var addEdge = 0;
    var sw = sprite_get_width(argument4)
    var sh = sprite_get_height(argument4)
    var mstate = uiz_drawscrollbar_getMstate(argument7);
    var mstate_last = uiz_drawscrollbar_getMstate_last(argument7);
    if mstate = mstate_last then {
        var state_change = false;
    } else {
        var state_change = true;
    }

    var nwidth = width - height * 2

    var barw = min(nwidth, max(50, floor(nwidth * (1 / power(argument8, 1 / 5)))));
    var scw = nwidth - barw;

    var sc = uiz_drawscrollbar_getScroll(argument7);
    if argument8 = 0 then {
        var sca = 0
    } else {
        var sca = sc / argument8;
    }
    var comph = min(barw / 2, height)
    var x4 = floor(x1 + sca * scw);

    var x5 = floor(x4 + comph);
    var x7 = x4 + barw;
    var x6 = floor(x7 - comph);


    //draw back
    if barw > 0 then {
        if updated = false or(state_change = true and((mstate >= 1 and mstate <= 2) or(mstate_last >= 1 and mstate_last <= 2))) {
            switch (mstate) {
                case 1:
                    sel = 4;
                    break;
                case 2:
                    sel = 5;
                    break;
                default:
                    sel = 3;
                    break;

            }
            //if id=100054 then{sdbm("I think, ",argument7,mstate,sel,argument8,id)}
            draw_sprite_ext(argument4, sel, x0, argument1 + height, height / sw, height / sh, 90, argument5, 1) //left
        }
        if updated = false or(state_change = true and((mstate >= 3 and mstate <= 4) or(mstate_last >= 3 and mstate_last <= 4))) {
            switch (mstate) {
                case 3:
                    sel = 1;
                    break;
                case 4:
                    sel = 2;
                    break;
                default:
                    sel = 0;
                    break;
            }
            draw_sprite_ext(argument4, sel, x2, argument1 + height, height / sw, height / sh, 90, argument5, 1) //right

        }
        if updated = false or update_bar = true or(state_change = true and((mstate >= 5 and mstate <= 6) or(mstate_last >= 5 and mstate_last <= 6))) {
            //draw the background

            switch (argument6) {
                case uiz_texturemode_fill_edgeless:
                    addEdge = 1
                    var szx = 1
                    var szy = 1
                    break;
                case uiz_texturemode_fill:
                    var szx = 1
                    var szy = 1
                    break;
                case uiz_texturemode_tile:
                    var szx = nwidth / sw
                    var szy = height / sh
                    break;
                case uiz_texturemode_tilefit:
                    var szx = round(nwidth / sw);
                    var szy = round(height / sh);
                    break;
                default:
                    szx = 1
                    szy = 1
            }

            uiz_draw_sprite_tiles(argument4, 16, x1, argument1, x2, y1, szx, szy, argument5, 1,0,0);
            //end of draw background

            //draw scrollbar
            switch (mstate) {
                case 5:
                    sel = 1;
                    break;
                case 6:
                    sel = 2;
                    break;
                default:
                    sel = 0;
                    break;
            }
            if argument8>0 then{
                if height * 2 > barw then {
                    //sdbm("placd 2: stopping at,",x4+(height/sh)*sh,"starting at,",x6);
                    if ((x4 + (barw / sh) / 2 * sh) <= x6) {
                        x6--;
                    }
                    //sdbm(x1,x4,x6,sca*scw,sca,scw,sc,argument8)
                    draw_sprite_ext(argument4, 6 + sel, x4, argument1 + height, height / sw, (barw / sh) / 2, 90, argument5, 1) //left
                    draw_sprite_ext(argument4, 9 + sel, x6, argument1 + height, height / sw, (barw / sh) / 2, 90, argument5, 1) //right
    
                } else {
                    //sdbm("stopping at,",x4+(height/sh)*sh,"starting at,",x6);
                    if ((x4 + (height / sh) * sh) <= x6) {
                        x6--;
                    }
                    draw_sprite_ext(argument4, 6 + sel, x4, argument1 + height, height / sw, height / sh, 90, argument5, 1) //left
                    draw_sprite_ext(argument4, 9 + sel, x6, argument1 + height, height / sw, height / sh, 90, argument5, 1) //right
                }
    
                if x5 < x6 then {
                    if (x4 + (height / sw) * sw <= x5) {
                        x5--;
                    }
                    uiz_draw_sprite_tiles(argument4, 17 + sel, x5, argument1, x6, y1, szx, szy, argument5, 1,0,addEdge)
                }
                
                var conh = height - comph;
                draw_sprite_ext(argument4, 15, x4 + barw / 2 - comph / 2, argument1 + conh / 2, comph / sw, comph / sh, 0, argument5, 1) //middle
                }
            }
    } else {
        //if barh<0 and only the buttons fit
        if updated = false or(state_change = true and((mstate >= 1 and mstate <= 2) or(mstate_last >= 1 and mstate_last <= 2))) {
            switch (mstate) {
                case 1:
                    sel = 4;
                    break;
                case 2:
                    sel = 5;
                    break;
                default:
                    sel = 3;
                    break;
            }

            //if id=100054 then{sdbm("I think, ",argument7,mstate,sel,argument8,id)}
            draw_sprite_ext(argument4, sel, rx, argument1 + height, height / sh, (width / sw) / 2, 90, argument5, 1) //left
        }
        if updated = false or(state_change = true and((mstate >= 3 and mstate <= 4) or(mstate_last >= 3 and mstate_last <= 4))) {
            switch (mstate) {
                case 3:
                    sel = 1;
                    break;
                case 4:
                    sel = 2;
                    break;
                default:
                    sel = 0;
                    break;
            }

            draw_sprite_ext(argument4, sel, rlx - width / 2, argument1 + height, height / sh, (width / sw) / 2, 90, argument5, 1) //right
        }
    }
}
//draw_text(rx,ry,argument7)
