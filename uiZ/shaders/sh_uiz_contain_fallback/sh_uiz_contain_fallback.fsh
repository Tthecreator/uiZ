varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;
vec4 c;

varying vec4 toy_v;
varying vec2 sz_v;
uniform sampler2D s_Background;

float texa;
vec4 tex;
float gla;

void main()
{

    vec4 toy = toy_v;
    vec2 sz = sz_v;
    //sampler2D s_Background = s_Background_v;

    tex=texture2D( s_Background, v_pos/sz );
    
    //gl_FragColor = tex;
    //gl_FragColor = vec4(1.0,1.0,0.0,1.0);
    //for more info one these two methods see: https://stackoverflow.com/a/37837060
    
    //unbranched method (preferred on other hardware that has issues with dynamic branching)
    c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));//original
    gl_FragColor = c * v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )*vec4(tex.a);

    //passtrough
    //gl_FragColor = v_vColour*texture2D( gm_BaseTexture, v_vTexcoord );*vec4(tex.a);
        
    //branched method (preferred on more modern hardware)
    //gl_FragColor = (v_pos.x>=toy.x && v_pos.y>=toy.y && v_pos.x<=toy.z && v_pos.y<=toy.a) ? gl_FragColor :  vec4(0.0);    
    
    gl_FragColor = vec4(gl_FragColor.rgb*vec3(gl_FragColor.a),gl_FragColor.a);
    
    
}

