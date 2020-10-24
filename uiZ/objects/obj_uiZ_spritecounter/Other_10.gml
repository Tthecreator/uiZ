if uiz_cntn() then{

var d=max(1,digits)
var sc=(width/sprite_get_width(sprite))/d
var scy=height/sprite_get_height(sprite)
var s=width/d;
for(var i=0;i<d;i++){
var p=power(base,i);
draw_sprite_ext(sprite,(value mod (p*base)) div p,rlx-s*(i+1),ry,sc,scy,0,color,alpha)
}


uiz_containend()
}


