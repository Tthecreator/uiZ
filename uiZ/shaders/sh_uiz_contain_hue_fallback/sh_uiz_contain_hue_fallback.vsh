//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_pos;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 doy;
uniform vec4 toy;
uniform vec2 sz;
uniform float val;
uniform float alpha;
//uniform sampler2D s_Background;

varying vec4 doy_v;
varying vec4 toy_v;
varying vec2 sz_v;
varying float val_v;
varying float alpha_v;
//varying sampler2D s_Background_v;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_pos = in_Position.xy;
    
    doy_v = doy;
    toy_v = toy;
    sz_v = sz;
    val_v = val;
    alpha_v = alpha;
    //s_Background_v = s_Background;
}

