update=0
if uiz_cntn() then{
if font>-1 then{draw_set_font(font)}
//draw back
//draw_square(rx,ry,rlx,rly,backcolor,alpha)
var doupdatebutton;
if updatebutton=true and uiz_selfmarked=true then{doupdatebutton=true;}else{
doupdatebutton=false;
}
if doupdatebutton=false then{
uiz_back()
}
//draw button
var mk=uselist

if uselist!=-1 and ds_exists(uselist,ds_type_list) and ds_list_size(uselist)>selected then{value=string(uselist[| selected]);maskvalue=value}else{value=""}
if masklist!=-1 and ds_exists(masklist,ds_type_list) and ds_list_size(masklist)>=ds_list_size(uselist) then{mk=masklist;maskvalue=string(masklist[| selected])}else{maskvalue=value}
//if doupdatebutton=true then{
draw_square(rlx+buttonmargin-buttonsz,ry+height/2-buttonsz/2+buttonmargin,rlx-buttonmargin+1,ry+height/2+buttonsz/2-buttonmargin+1,ucolor,buttonbackalpha*alpha);
//draw the dropdown triangle
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(spr_square,0));
draw_vertex_texture_colour(rlx+buttonmargin-buttonsz+trianglemargin,ry+height/2-buttonsz/2+buttonmargin+trianglemargin,0.5,0.5,icolor,buttontrianglealpha*alpha)
draw_vertex_texture_colour(rlx-buttonmargin-trianglemargin,ry+height/2-buttonsz/2+buttonmargin+trianglemargin,0.5,0.5,icolor,buttontrianglealpha*alpha)
draw_vertex_texture_colour(rlx-buttonsz/2,ry+height/2+buttonsz/2-buttonmargin-trianglemargin,0.5,0.5,icolor,buttontrianglealpha*alpha)
draw_primitive_end()
//}
if doupdatebutton=false then{
//draw text
draw_set_color(textcolor)
draw_set_alpha(alpha)
draw_set_valign(fa_center)
var txt="";
if containtext=1 then{
txt=uiz_getText_contained(string(maskvalue),width-buttonsz)
}else{txt=value}
draw_text(rx+margin_normal,ry+height/2,string_hash_to_newline(txt))
draw_set_valign(fa_top)
}
uiz_containend()
}

