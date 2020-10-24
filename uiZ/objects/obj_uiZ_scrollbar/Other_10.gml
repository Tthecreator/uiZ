if uiz_cntn() then{
//if uscroll<0 then{uscroll=-1-scroll}else{uscroll=scroll}
if height>=width then{
//uscroll=
uiz_drawscrollbar_vertical_draw(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscroll,scrolllines);
}else{
//uscroll=
uiz_drawscrollbar_horizontal_draw(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscroll,scrolllines);
}
//scroll=uiz_positify(uscroll)
uiz_containend()
}

