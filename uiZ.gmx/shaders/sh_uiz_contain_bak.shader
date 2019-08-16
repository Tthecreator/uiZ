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

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_pos = in_Position.xy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;
vec4 c;
//vec4 d;
//float is;
uniform vec4 toy;
//uniform vec2 scs;

void main()
{
    //c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));//original
    c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-min(1.0,floor(v_pos.y/toy.a)))*(1.0-min(1.0,floor(v_pos.x/toy.z)))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));//second original
    //c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-mod(v_pos.y/toy.a,1.0))*(1.0-mod(v_pos.x/toy.z,1.0))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));
    //gl_FragColor = v_vColour * (texture2D( gm_BaseTexture, v_vTexcoord )+(1.0-ceil(v_vTexcoord.x)*ceil(v_vTexcoord.y)));//original
    gl_FragColor = c * v_vColour * (texture2D( gm_BaseTexture, v_vTexcoord ));
    //gl_FragColor = v_vColour;

  //  gl_FragColor = vec4(1.0,v_vTexcoord.x,v_vTexcoord.y,1.0);
//    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
}
//* v_vColour

