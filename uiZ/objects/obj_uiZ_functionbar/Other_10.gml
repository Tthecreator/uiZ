if uiz_cntn() then {
    isz = (height - marginy * 2) * ratio
    thisstepselected = -1
    draw_square(rx, ry, rlx, rly, backcolor, backalpha * alpha)
    for (var i = 0; i < items; i++) {
            uiz_functionbar_drawitem(i)
        }
    laststepselected = thisstepselected
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    uiz_containend()
}

