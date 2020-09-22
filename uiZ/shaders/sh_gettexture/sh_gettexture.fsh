//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
float is;
void main()
{
//    gl_FragColor = v_vColour;// * texture2D( gm_BaseTexture, v_vTexcoord );
//gl_FragColor=texture2D( gm_BaseTexture, v_vTexcoord );
//is = ;
//is= min(1.0,clamp(0.0,ceil(v_vTexcoord.x-1.0),1.0)+clamp(0.0,ceil(v_vTexcoord.y-1.0),1.0));
//is=clamp(ceil(v_vTexcoord.x-1.0),0.0,1.0);
//is=ceil(v_vTexcoord.x-1.0);
//is=textureSize( gm_BaseTexture, 0).x;
//gl_FragColor=vec4(v_vTexcoord.x,1.0,1.0,1.0);
//is = textureQueryLevels() 
is=min(1.0,ceil(v_vTexcoord.x)*ceil(v_vTexcoord.y));
gl_FragColor=v_vColour*(texture2D( gm_BaseTexture, v_vTexcoord )+(1.0-is));
}

