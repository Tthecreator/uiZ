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
uniform float v1;
uniform float v2;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    //gl_FragColor = vec4(pow(abs(vec3(1.0)-pow(abs(gl_FragColor.rgb),vec3(v1))),vec3(v2)),gl_FragColor.a);
    gl_FragColor = vec4(pow(abs(vec4(1.0)-pow(abs(gl_FragColor.rgba),vec4(v1))),vec4(v2)));
    //gl_FragColor = vec4(gl_FragColor.rgb,pow(abs((1.0)-pow(abs(gl_FragColor.a),(v1))),(v2)));
}

