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

//######################_==_YOYO_SHADER_MARKER_==_######################@~




//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;
vec4 c;
uniform vec4 toy;
uniform vec2 sz;
uniform sampler2D s_Background;
float texa;
vec4 tex;
float gla;

void main()
{
    tex=texture2D( s_Background, v_pos/sz );
    
    //for more info one these two methods see: https://stackoverflow.com/a/37837060
    
    //unbranched method (preferred on other hardware that has issues with dynamic branching)
    //c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));//original
    //gl_FragColor = c * v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )*vec4(tex.a);
    
    //branched method (preferred on more modern hardware)
    gl_FragColor = (v_pos.x>=toy.x && v_pos.y>=toy.y && v_pos.x<=toy.z && v_pos.y<=toy.a) ? v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )*vec4(tex.a) :  vec4(0.0);
    gl_FragColor = vec4(gl_FragColor.rgb*vec3(gl_FragColor.a),gl_FragColor.a);

}

