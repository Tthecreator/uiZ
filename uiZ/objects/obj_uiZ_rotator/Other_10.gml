if uiz_cntn() then{
var ax=sprite_get_xoffset(sprite);
var ay=sprite_get_yoffset(sprite);
var sz=min(width,height)/2;
var mx=rx+width/2
var my=ry+height/2
//draw_sprite_pos(sprite,img,mx+dsin(rotation)*sz,ry,rlx,ry,rlx,rly,rx,rly,alpha)
draw_sprite_pos(sprite,img,mx+dsin(rotation+225)*sz,my+dcos(rotation+225)*sz,mx+dsin(rotation+135)*sz,my+dcos(rotation+135)*sz,mx+dsin(rotation+45)*sz,my+dcos(rotation+45)*sz,mx+dsin(rotation-45)*sz,my+dcos(rotation-45)*sz,alpha)

uiz_containend()
}
//draw_debugpoint(rx+width/2,ry+height/2,c_blue)

