///uiz_drawscrollbar(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,scroll,scrolllines,middlemousescroll,scrollspeed)
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
9-middlemousescroll: A bool value whether you want scrolling to be enabled. There is no mouse position checking for this value, so you'll have to program that yourself.
10-scrollspeed: how many scrolllines the middle mouse scroll wheel and/or the buttons should scroll every time you interact with them.


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



*/
if (argument2-argument0)>(argument3-argument1) then{
return uiz_drawscrollbar_horizontal(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10)
}else{
return uiz_drawscrollbar_vertical(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10)
}
