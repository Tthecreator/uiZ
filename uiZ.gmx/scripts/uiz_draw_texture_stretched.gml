///uiz_draw_texture_stretched(texture,x,y,w,h)
draw_primitive_begin_texture(pr_trianglestrip,argument0)
var nrlx=argument1+argument3
var nrly=argument2+argument4
draw_vertex_texture(argument1,(nrly),0,0)
draw_vertex_texture(argument1,argument2,0,1)
draw_vertex_texture((nrlx),(nrly),1,0)
draw_vertex_texture((nrlx),argument2,1,1)
draw_primitive_end()
