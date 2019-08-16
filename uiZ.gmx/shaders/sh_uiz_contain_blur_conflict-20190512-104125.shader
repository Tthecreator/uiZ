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
//uniform vec4 toy;
uniform sampler2D s_Background;
float texa;
vec4 tex;
float gla;
//uniform vec2 scs;
float blur=30.0;
uniform vec2 toy;

void main()
{

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gla=gl_FragColor.a;
    gla*=.3;

    vec4 avg=vec4(0.0);
    for(float i = -blur; i<=blur; i++){
    for(float e = -blur; e<=blur; e++){
    avg+=texture2D( s_Background, v_vTexcoord+vec2(i,e)/toy );
    }
    }
    tex=mix(texture2D( s_Background, v_vTexcoord ),avg/vec4((blur*2.0+1.0)*(blur*2.0+1.0)),min(1.0,gla*gla*30.0));
    
    
    texa=tex.a;
    //texa=1.0;

    gl_FragColor = vec4(gl_FragColor.rgb*vec3(gla)+tex.rgb*vec3(1.0-gla),1.0-((1.0-texa)*(1.0-gla)));
    //gl_FragColor.r=texa;
    //gl_FragColor.a=1.0;
}

