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

//uniform sampler2D s_Background;
uniform vec2 toy;

//varying sampler2D s_Background_v;
varying vec2 toy_v;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_pos = in_Position.xy;
    
    //s_Background_v = s_Background;
    toy_v = toy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;
vec4 c;

uniform sampler2D s_Background;
varying vec2 toy_v;

float texa;
vec4 tex;
float gla;
const float blur=30.0;


void main()
{
    //sampler2D s_Background = s_Background_v;
    vec2 toy = toy_v;

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

    gl_FragColor = vec4(gl_FragColor.rgb*vec3(gla)+tex.rgb*vec3(1.0-gla),1.0-((1.0-texa)*(1.0-gla)));
}

