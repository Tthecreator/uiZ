///uiz_animation_revertfunction(animationfactor,graphtype)
///Use script only when absolutely needed.
//Some functions are very hard to reverse and thus only have approximations.
//other functions have problems with float rounding errors. (I think)
//the more simple formulas for which every y value only occurs one work mostly just fine.
var bf=argument0
var diff=0
switch(argument1){
case uiz_straight:
diff=bf
break;
case uiz_one:
diff=ceil(bf)
break;
case uiz_zero:
diff=floor(bf)
break;
case uiz_quadratic_in:
diff=sqrt(bf)
break;
case uiz_quadratic_out:
diff=(2-sqrt(4-4*bf))/2
break;
case uiz_quadratic_inout:
if (bf<0.5) then{diff=sqrt(bf/2)}else{diff=(4-sqrt(8-8*bf))/4}
break;
case uiz_quadratic_outin:
if (bf<0.5) then{diff=(2-sqrt(4-8*bf))/4}else{diff=1-(2-sqrt(-4+8*bf))/4;}
break;
case uiz_sin_in:
diff=(2*arccos(-bf+1))/pi 
break;
case uiz_sin_out:
diff=(2*arcsin(bf))/pi
break;
case uiz_sin_inout:
diff=(2*arcsin(sqrt(bf)))/pi;
break;
case uiz_sin_outin:
if (bf<0.5) then{diff=arcsin(2*bf)/pi}else{diff=1-(arcsin(2-2*bf)/pi)}
break;
case uiz_exponential_in:
diff=(log10(bf)/log10(1024))+1;
break;
case uiz_exponential_out:
diff=(log10(1/(1-bf))/log10(1024));
break;
case uiz_exponential_inout:
if (bf<0.5) then{diff=log10(64*bf)/log10(1024)}else{diff=log10(-16/(bf-1))/log10(1024)}
break;
case uiz_exponential_outin:
if (bf<0.5) then{diff=log10(1/(1-2*bf))/(20*log10(2))}else{diff=log10(1048576*(2*bf-1))/(20*log10(2))}
break;
case uiz_circular_in:
diff=1-sqrt(1-bf*bf);
break;
case uiz_circular_out:
diff=sqrt(2*bf-bf*bf);
break;
case uiz_circular_inout:
if (bf<0.5) then{
bf*=2;
diff=(1-sqrt(1-bf*bf))/2;
}else{
bf=(bf-.5)*2;
diff=sqrt(abs(2*bf-bf*bf))/2+.5
}
break;
case uiz_circular_outin:
if (bf<0.5) then{bf*=2; diff=sqrt(2*bf-bf*bf)/2}else{bf=(bf-.5)*2;;diff=(1-sqrt(1-bf*bf))/2+.5;}
break;
case uiz_cubic_in:
diff=power(bf,1/3);
break;
case uiz_cubic_out:
diff=power(bf,3);
break;
case uiz_cubic_inout:
if (bf<0.5) then{diff=power(bf*2,1/3)/2;}else{diff=power((bf-.5)*2,3)/2+.5}
break;
case uiz_cubic_outin:
if (bf<0.5) then{diff=power(bf*2,3)/2}else{diff=.5*(power(2*bf-1,1/3)+1)}
break;
case uiz_smoothstep:
if (bf<0.5) then{
diff=power(bf*2,1/1.65)/2
}else{
diff = arcsin((bf-.5)*2)/pi+.5
}
break;
case uiz_spring:
diff=(bf+0.10825)/8.8;//approximation
break;
case uiz_acceldecel:
diff=arccos(1-2*bf)/pi
break;
case uiz_bounce_in:
if bf=1 then{diff=1}else{
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
diff = sqrt(bf)/bounces
}
break;
case uiz_bounce_out:
if bf=0 then{diff=0}else{
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
diff = (1-sqrt(1-bf)/bounces)
}
break;
case uiz_bounce_inout:
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
if (bf<0.5) then{
diff = (sqrt(bf*2)/bounces)/2
}else{
diff = (1-sqrt(1-(bf-.5)*2)/bounces)/2+.5
}
diff=clamp(diff,0,1)
break;
case uiz_bounce_outin:
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
if (bf<0.5) then{
diff = (1-sqrt(1-bf*2)/bounces)/2
}else{
diff = sqrt((bf-.5)*2)/bounces/2+.5
}
diff=clamp(diff,0,1)
break;
case uiz_anticipate_in:
diff=5/81*sqrt(81*bf+32/3)+4/9
break;
case uiz_anticipate_out:
diff=1-(5/81*sqrt(81*(1-bf)+32/3)+4/9)
break;
case uiz_anticipate_inout:
var tension=2;
if (bf<0.5) then{
diff=(5/72*sqrt(54*bf*2+32/3)+4/9)/2
}else{
diff=(1-(5/72*sqrt(54*(1-(bf-0.5)*2)+32/3)+4/9))/2+.5
}
break;
case uiz_anticipate_outin:
if (bf<0.5) then{
diff=(1-(5/72*sqrt(54*(1-bf*2)+32/3)+4/9))/2
}else{diff=(5/72*sqrt(54*(bf-.5)*2+32/3)+4/9)/2+0.5}
break;
case uiz_wigle:
if (bf<0.5) then{//approximated
diff=arcsin(39*bf/20)/(2*pi)
}else{
diff=arcsin(39*(bf-1)/20)/(2*pi)+1
}
break;
case uiz_elastic_in:
diff=power((bf+0.38)/43.5,1/1.63)+0.87;
break;
case uiz_elastic_out:
diff=1-(power(((1-bf)+0.38)/43.5,1/1.63)+0.87);//approximation
break;
case uiz_elastic_inout:
if (bf<0.5) then{
diff=(power((bf*2+0.38)/43.5,1/1.63)+0.87)/2;//approximation
}else{
diff=.5+(1-(power(((1-(bf-.5)*2)+0.38)/43.5,1/1.63)+0.87))/2;//approximation
}
break;
case uiz_elastic_outin:
if (bf<0.5) then{
diff=(1-(power(((1-bf*2)+0.38)/43.5,1/1.63)+0.87))/2;//approximation
}else{
diff=0.5+(power(((bf-.5)*2+0.38)/43.5,1/1.63)+0.87)/2;//approximation
}
break;
}
return diff;