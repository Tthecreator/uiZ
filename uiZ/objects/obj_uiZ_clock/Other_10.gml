if uiz_cntn() then{
//put draw code here
if sprite_exists(dotsprite) then{
//draw big dots in a circle
var hx=width/2;
var hy=height/2;
var radx=hx-sprite_get_width(dotsprite)/2;
var rady=hy-sprite_get_height(dotsprite)/2;
hx+=rx;
hy+=ry;
for(var i=0;i<bigdots;i++){
var hk=(i/bigdots)*360;
draw_sprite(dotsprite,0,hx+dsin(hk)*radx,hy+dcos(hk)*rady)
//draw small dots
for(var e=1;e<=smalldots;e++){
var gk=hk+(e/(smalldots+1))*((1/bigdots)*360)
draw_sprite(dotsprite,1,hx+dsin(gk)*radx,hy+dcos(gk)*rady)
}
}
}
//draw pointers
if sprite_exists(pointersprite) then{
var sz=uiz_getposx_self(0.5,fcm);
var hk=0;
var sc=sz/sprite_get_height(pointersprite);
if seconds=true then{draw_sprite_ext(pointersprite,0,hx,hy,sc,sc,-(sec)*6-ats,pointercolor,alpha)}
if minutes=true then{draw_sprite_ext(pointersprite,1,hx,hy,sc,sc,-date_get_minute(tm)*6-atm,pointercolor,alpha)}
if hours=true then{draw_sprite_ext(pointersprite,2,hx,hy,sc,sc,-date_get_hour(tm)*30-ath,pointercolor,alpha)}
}
uiz_containend()
}

