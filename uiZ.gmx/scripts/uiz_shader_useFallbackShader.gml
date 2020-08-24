///uiz_shader_useFallbackShader(enabled)
//if this option is enabled, uiZ will not pass uniform values directly to fragment shaders, but will make uniforms pass trough the vertex shader.
//Some platforms have problems with passing uniforms directly to fragment shaders.
//you need to do a uiz_shader_update after calling this script
global.uiz_useFallbackShader = argument0;
