///uiz_draw_texture(texture,x,y)
//
draw_primitive_begin_texture(pr_trianglestrip,argument0)
var nrlx=argument1+texture_get_width(argument0)
var nrly=argument2+texture_get_height(argument0)
//sdbm("draw_texture",argument1,argument2,nrlx,nrly,texture_get_width(argument0))
draw_vertex_texture(argument1,(nrly),0,0)
draw_vertex_texture(argument1,argument2,0,1)
draw_vertex_texture((nrlx),(nrly),1,0)
draw_vertex_texture((nrlx),argument2,1,1)
draw_primitive_end()
