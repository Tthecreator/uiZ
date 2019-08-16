//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
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

