///uiz_back([n])
//See manual for more information
if hasbackground=true then{
if argument_count=1 then{
uiz_fix_Background(argument[0])
}
if texas=-1 or script_exists(texas)=0 or texas=uiz_back then{
draw_square(rx,ry,rlx,rly,color_normal,alpha)
}else{
draw_set_alpha(alpha)
script_execute(texas)
}
}
