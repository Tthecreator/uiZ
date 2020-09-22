










//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;

uniform vec4 doy;
uniform vec4 toy;
uniform vec2 sz;
uniform float val;
uniform float alpha;
uniform sampler2D s_Background;
vec3 col;
vec4 c;
vec4 tex;

void main()
{
//    d = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));
  
    col = vec3((v_pos.x-doy.x)/doy.z,1.0-(v_pos.y-doy.y)/doy.w,v_vColour.r);
    //c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));
    gl_FragColor = vec4(vec3(col.z)*mix(vec3(1.0), clamp((abs(fract(vec3(col.x) + vec3(1.0, 2.0 / 3.0, 1.0 / 3.0)) * 6.0 - vec3(3.0))) - vec3(1.0), 0.0, 1.0), col.y),1.0);
//    tex=texture2D( gm_BaseTexture, v_pos/sz );
    //tex=texture2D( s_Background, v_pos/sz );
    //gl_FragColor =  c * vec4(vec3(val),1.0) * gl_FragColor*vec4(alpha) * tex;
    //gl_FragColor = vec4(gl_FragColor.rgb*vec3(gl_FragColor.a),gl_FragColor.a);
//    gl_FragColor = c;


    //texa = texture2D( s_Background, v_pos/sz ).a;
    
    //for more info one these two methods see: https://stackoverflow.com/a/37837060
    
    //unbranched method (preferred on other hardware that has issues with dynamic branching)
    //c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));//original
    //gl_FragColor = c * v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )*vec4(texa);

    //passtrough
    //gl_FragColor = v_vColour*texture2D( gm_BaseTexture, v_vTexcoord )*vec4(texture2D( s_Background, v_pos/sz ).a);
    gl_FragColor = gl_FragColor*vec4(texture2D( s_Background, v_pos/sz ).a);
        
    //branched method (preferred on more modern hardware)
    gl_FragColor = (v_pos.x>=toy.x && v_pos.y>=toy.y && v_pos.x<=toy.z && v_pos.y<=toy.a) ? gl_FragColor :  vec4(0.0);    
    gl_FragColor = vec4(gl_FragColor.rgb*vec3(gl_FragColor.a),gl_FragColor.a);

}

