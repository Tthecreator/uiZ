//
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

