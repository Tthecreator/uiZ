///uiz_gridlist_drawcell(column,row,x,y,w,INTERAL UIZ SCRIPT DO NOT USE)
///INTERNAL UIZ FUNCTION DO NOT USE
var row=argument1;
var col=argument0;
var wx=argument2;
var wy=argument3;
var w=argument4
    if orientation = 0 then {
        var t = maingrid[#col, row];
    } else {
        var t = maingrid[#row, col];
    }
//}

if is_real(t) and t = 1 then {
    t = mainlist[| col];
}

if is_real(t) and sprite_exists(t) then {
    if t!=0 then{
        var scy = h / sprite_get_height(t) * imagescale
        var scx = min(scy, w / sprite_get_width(t) * imagescale) 
        var vrx = scx * sprite_get_width(t);
        var vry = scy * sprite_get_height(t);
        draw_sprite_ext(t, 0, wx + w/2 - (vrx / 2 - sprite_get_xoffset(t) * scx), wy + h/2 - ( vry / 2 - sprite_get_yoffset(t) * scy), scx, scy, 0, c_white, alpha)
    }
} else {
    //draw text in cell
    draw_set_color(textcolor)
    
    draw_text(wx + textmargin, wy+h/2, uiz_gettext_contained(string(t),w))

}
