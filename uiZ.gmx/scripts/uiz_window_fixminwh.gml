if keepratio=true then{
var ratio=width/height;
minw=bars*4;
minh=minw/ratio;

}else{
minw=bars*4;
minh=0;
}
minw=max(minw,uiz_getposx(minwidth,minwidthtype));
minh=max(minh,uiz_getposy(minheight,minheighttype));
