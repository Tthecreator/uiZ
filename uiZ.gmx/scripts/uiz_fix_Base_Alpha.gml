gml_pragma("forceinline");
var inAlpha = head_alpha;
if function_count>=0 then{
inAlpha=olda+newa*uiz_animation_getFunction(function_count,function_a);
}

main_alpha=inAlpha*parent.main_alpha
alpha=image_alpha*main_alpha 
