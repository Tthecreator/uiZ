



//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_pos;
varying vec4 v_vColour;

varying vec4 doy_v;
varying vec4 toy_v;
varying vec2 sz_v;
varying float val_v;
varying float alpha_v;
uniform sampler2D s_Background;

vec3 col;
vec4 c;
vec4 tex;

void main()
{ 
    vec4 doy = doy_v;
    vec4 toy = toy_v;
    vec2 sz = sz_v;
    float val = val_v;
    float alpha = alpha_v;
    //sampler2D s_Background = s_Background_v;

    col = vec3((v_pos.x-doy.x)/doy.z,1.0-(v_pos.y-doy.y)/doy.w,v_vColour.r);
    c = vec4(1.0,1.0,1.0,max(0.0,min(1.0,(1.0-floor(v_pos.y/toy.a))*(1.0-floor(v_pos.x/toy.z))*(floor(v_pos.x/toy.x))*(floor(v_pos.y/toy.y)))));
    gl_FragColor = vec4(vec3(col.z)*mix(vec3(1.0), clamp((abs(fract(vec3(col.x) + vec3(1.0, 2.0 / 3.0, 1.0 / 3.0)) * 6.0 - vec3(3.0))) - vec3(1.0), 0.0, 1.0), col.y),1.0);
    tex=texture2D( s_Background, v_pos/sz );
    gl_FragColor =  c * vec4(vec3(val),1.0) * gl_FragColor*vec4(alpha) * tex;
}

