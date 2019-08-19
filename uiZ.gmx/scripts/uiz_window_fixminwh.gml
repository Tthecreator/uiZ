if keepratio=true then{
var ratio=width/height;
minw=bars*(4+ds_list_size(custom_buttons_left_sprite)+ds_list_size(custom_buttons_right_sprite))+end_leftframemargin+end_rightframemargin;
minh=minw/ratio;

}else{
minw=bars*(4+ds_list_size(custom_buttons_left_sprite)+ds_list_size(custom_buttons_right_sprite))+end_leftframemargin+end_rightframemargin;
minh=0;
}
minw=max(minw,uiz_getposx(minwidth,minwidthtype));
minh=max(minh,uiz_getposy(minheight,minheighttype));
