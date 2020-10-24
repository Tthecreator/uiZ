if uiz_cntn() then{//this code is used to make sure everything drawn here stays within a certain boundry.

if doScroll then{
    uiz_drawscrollbar_vertical_draw(scrollbarX, ry, rlx, rly, scrollbarSprite, scrollbarColor, scrollbarBackTexMode, scroll, scrollLines);
}

draw_square_colour(rx, ry - uiz_drawscrollbar_getValue(scroll), scrollbarX - 1, ry + squareHeight, c_red, c_red, c_green, c_green, false, alpha);

uiz_containend()
}

