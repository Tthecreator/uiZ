///uiz_animation_getfunction(factor from 0 to 1,graphtype)
var bf=argument0
if bf=0 then{return 0;}
if bf=1 then{return 1;}
var diff=0
switch(round(argument1)){
case uiz_straight:
diff=bf
break;
case uiz_one:
diff=1
break;
case uiz_zero:
diff=0
break;
case uiz_quadratic_in:
diff=bf*bf
break;
case uiz_quadratic_out:
diff=-bf*(bf-2)
break;
case uiz_quadratic_inout:
if (bf<0.5) then{diff=bf*bf*2}else{diff=-2*bf*bf+4*bf-1}
break;
case uiz_quadratic_outin:
if (bf<0.5) then{diff=-2*bf*bf+2*bf}else{bf=1-bf;diff=2*bf*bf-2*bf+1}
break;
case uiz_sin_in:
diff=-cos(bf*pi/2)+1
break;
case uiz_sin_out:
diff=sin(bf*pi/2)
break;
case uiz_sin_inout:
diff=-cos(bf*pi)/2+0.5
break;
case uiz_sin_outin:
if (bf<0.5) then{diff=sin(bf*pi)/2}else{diff=-cos(bf*pi-pi/2)/2+1}
break;
case uiz_exponential_in:
diff=power(2,10*-(1-bf))
break;
case uiz_exponential_out:
diff=1-power(2,10*-bf)
break;
case uiz_exponential_inout:
if (bf<0.5) then{diff=0.5*power(2,10*(bf-0.5))}else{diff=0.5*-power(2,-10*(bf-0.5))+1}
break;
case uiz_exponential_outin:
if (bf<0.5) then{diff=(1-power(2,10*-bf*2))*0.5}else{diff=power(2,-20+bf*20)/2+0.5}
break;
case uiz_circular_in:
diff=sqrt(abs(1-sqr(bf-1)));
break;
case uiz_circular_out:
diff=(sqrt(abs(1-sqr(bf)))-1)*-1
break;
case uiz_circular_inout:
if (bf<0.5) then{diff=sqrt(abs(1-sqr(bf*2-1)))/2}else{diff=(sqrt(abs(1-sqr(1-bf*2)))-1)*-0.5+0.5}
break;
case uiz_circular_outin:
if (bf<0.5) then{diff=(sqrt(abs(1-sqr(bf*2)))-1)*-0.5}else{diff=sqrt(abs(1-sqr(bf*2-2)))/2+0.5}
break;
case uiz_cubic_in:
diff=bf*bf*bf
break;
case uiz_cubic_out:
diff=power(bf,1/3);
break;
case uiz_cubic_inout:
if (bf<0.5) then{diff=power(bf*2,3)*0.5}else{diff=0.5+power((bf-.5)*2,1/3)/2}
break;
case uiz_cubic_outin:
if (bf<0.5) then{diff=(power(bf*2,1/3))/2}else{bf=-1+bf*2; diff=(bf*bf*bf)/2+0.5}
break;
case uiz_smoothstep:
diff=bf*bf*(3-2*bf)
break;
case uiz_spring:
diff=1-power(2,-10*bf)*cos(4*pi*bf)
break;
case uiz_acceldecel:
diff=(cos((bf+1)*pi)/2)+0.5
break;
case uiz_bounce_in:
if bf=1 then{diff=1}else{
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
var sizes=bounces*bounces
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=min(1,1-bounceheight*(-power(betfactor*2-1,2)+1))
}
break;
case uiz_bounce_out:
if bf=0 then{diff=0}else{
bf=1-bf
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
var sizes=bounces*bounces
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=max(0,bounceheight*(-power(betfactor*2-1,2)+1))
}
break;
case uiz_bounce_outin:
var bounces=3
if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
var sizes=bounces*bounces
//sdbm("bounce_+inout",bounces)
if (bf<0.5) then{
bf=1-bf*2
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=min(1,1-bounceheight*(-power(betfactor*2-1,2)+1))*-0.5+0.5
}else{
bf=1-(2-bf*2)
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=max(0,bounceheight*(-power(betfactor*2-1,2)+1))*-0.5+1
}
break;
case uiz_bounce_inout:
var bounces=3
if frac(argument[1])>0 then{bounces=(1/frac(argument[1]))-1}
var sizes=bounces*bounces
if (bf<0.5) then{
//bf=1-(1-bf*2)
bf*=2
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=max(0,bounceheight*(-power(betfactor*2-1,2)+1))*-0.5+0.5
}else{
bf=2-bf*2
var currentbounce=round(sqrt(abs(sizes-bf*sizes)))
var bounceheight=power(0.5,bounces-currentbounce)
var bouncebeg=currentbounce*currentbounce-currentbounce
var betfactor=((sizes-bf*sizes)-bouncebeg)/(2*currentbounce)
diff=max(0,bounceheight*(-power(betfactor*2-1,2)+1))*0.5+0.5
}
break;
case uiz_anticipate_in:
var tension=2;
diff=bf*bf*((tension+1)*bf-tension)
break;
case uiz_anticipate_out:
var tension=2;
bf=1-bf
diff=1-(bf*bf*((tension+1)*bf-tension))
break;
case uiz_anticipate_inout:
var tension=2;
if (bf<0.5) then{diff=0.5*((bf*2)*(bf*2)*((tension+1)*(bf*2)-tension))}else{var t=bf*2-2; diff=0.5*(t*t*((tension+1)*t+tension)+2);}
break;
case uiz_anticipate_outin:
var tension=2;
if (bf<0.5) then{bf*=2; bf=1-bf; diff=1-(bf*bf*((tension+1)*bf-tension))/2-0.5}else{bf=bf*2-1; diff=bf*bf*((tension+1)*bf-tension)/2+0.5}
break;
case uiz_wigle:
diff=uiz_animation_wigle(bf,4,4)
break;
case uiz_elastic_in:
//diff=((-((0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3 )) + 0.5)-0.5)*2;
diff=(-(0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3))*2;
break;
case uiz_elastic_out:
bf=1-bf;
diff=1-((-((0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3 )) + 0.5)-0.5)*2;
break;
case uiz_elastic_inout:
if (bf<0.5) then{bf*=2; diff=(-(0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3))}else{bf=1-((bf-.5)*2); diff=(1-((-((0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3 )) + 0.5)-0.5));}
break;
case uiz_elastic_outin:
if (bf<0.5) then{
bf=1-bf*2;
diff=1-(-((0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3 )))-.5;
}else{bf=(bf-.5)*2; diff=(-(0.5*power(2,10*(bf-1))) * sin(((bf-1)-0.075)*(2*pi)/0.3))+.5;}
break;
}
return diff;
