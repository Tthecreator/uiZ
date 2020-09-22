if uiz_cntn() then{
//put draw code here
if ds_exists(tablist,ds_type_list) and ds_exists(spacinglist,ds_type_list) then{
if font!=-1 then{draw_set_font(font)}
draw_set_valign(valign)
draw_set_halign(halign)
if uiz_selfmarked=true then{
    if ms!=-1 && draw_new=true then{
    var sel;
    if draw_sel || selected=ms{
    sel=3;
    }else{
    sel=kmouseover//1+mouse_check_button(mb_left);
    }
    uiz_tabs_drawtab(msX,msX2-msX,sel,ms);
    draw_new=false;
    }
    if oldms!=-1 && draw_old=true then{
    uiz_tabs_drawtab(oldmsX,oldmsX2-oldmsX,0,oldms);
    draw_old=false;
    }
    if selected!=-1 && draw_sel=true then{
    uiz_tabs_drawtab(selmsX,selmsX2-selmsX,0,oldselected);
    draw_sel=false;
    selmsX=msX;
    selmsX2=msX2;
    }
    
    
    
}else{
    var sz=ds_list_size(tablist)
    var tot=0;
    for(var i=0;i<sz;i++){
    var w=spacinglist[| i]
    //draw_square(rx+tot,ry,rx+tot+w,rly,color,alpha)
    var sel=0;
    if i=selected then{sel=3}
    uiz_tabs_drawtab(rx+tot,w,sel,i);
    
    tot+=w;
    }
}
draw_set_valign(fa_top);
draw_set_halign(fa_left);
}
uiz_containend()
}

