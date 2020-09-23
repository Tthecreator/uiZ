/// @description uiz_animation_revertFunction(animationFactor, graphType)
/// @param animationFactor
/// @param  graphType
///Use script only when absolutely needed.
function uiz_animation_revertFunction(argument0, argument1) {
	//Some functions are very hard to reverse and thus only have approximations.
	//other functions have problems with float rounding errors. (I think)
	//the more simple formulas for which every y value only occurs one work mostly just fine.
	var bf=argument0
	var bfc = clamp(bf,0,1)
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
	diff=sqrt(bfc)
	break;
	case uiz_quadratic_out:
	diff=(2-sqrt(4-4*bfc))/2
	break;
	case uiz_quadratic_inout:
	if (bfc<0.5) then{diff=sqrt(bfc/2)}else{diff=(4-sqrt(8-8*bfc))/4}
	break;
	case uiz_quadratic_outin:
	if (bfc<0.5) then{diff=(2-sqrt(4-8*bfc))/4}else{diff=1-(2-sqrt(-4+8*bfc))/4;}
	break;
	case uiz_sin_in:
	diff=(2*arccos(-bfc+1))/pi 
	break;
	case uiz_sin_out:
	diff=(2*arcsin(clamp(bfc,-1,1)))/pi
	break;
	case uiz_sin_inout:
	diff=(2*arcsin(clamp(sqrt(bfc),-1,1)))/pi;
	break;
	case uiz_sin_outin:
	if (bfc<0.5) then{diff=arcsin(clamp(2*bfc,-1,1))/pi}else{diff=1-(arcsin(clamp(2-2*bfc,-1,1))/pi)}
	break;
	case uiz_exponential_in:
	diff=(log10(bfc)/log10(1024))+1;
	break;
	case uiz_exponential_out:
	diff=(log10(1/(1-bfc))/log10(1024));
	break;
	case uiz_exponential_inout:
	if (bfc<0.5) then{diff=log10(64*bfc)/log10(1024)}else{diff=log10(-16/(bfc-1))/log10(1024)}
	break;
	case uiz_exponential_outin:
	if (bfc<0.5) then{diff=log10(1/(1-2*bfc))/(20*log10(2))}else{diff=log10(1048576*(2*bfc-1))/(20*log10(2))}
	break;
	case uiz_circular_in:
	diff=1-sqrt(1-bfc*bfc);
	break;
	case uiz_circular_out:
	diff=sqrt(2*bfc-bfc*bfc);
	break;
	case uiz_circular_inout:
	if (bfc<0.5) then{
	bfc*=2;
	diff=(1-sqrt(1-bfc*bfc))/2;
	}else{
	bfc=(bfc-.5)*2;
	diff=sqrt(abs(2*bfc-bfc*bfc))/2+.5
	}
	break;
	case uiz_circular_outin:
	if (bfc<0.5) then{bfc*=2; diff=sqrt(2*bfc-bfc*bfc)/2}else{bfc=(bfc-.5)*2;;diff=(1-sqrt(1-bfc*bfc))/2+.5;}
	break;
	case uiz_cubic_in:
	diff=power(bfc,1/3);
	break;
	case uiz_cubic_out:
	diff=power(bfc,3);
	break;
	case uiz_cubic_inout:
	if (bfc<0.5) then{diff=power(bfc*2,1/3)/2;}else{diff=power((bfc-.5)*2,3)/2+.5}
	break;
	case uiz_cubic_outin:
	if (bfc<0.5) then{diff=power(bfc*2,3)/2}else{diff=.5*(power(2*bfc-1,1/3)+1)}
	break;
	case uiz_smoothstep:
	if (bfc<0.5) then{
	diff=power(bfc*2,1/1.65)/2
	}else{
		var bfcc = (bfc-.5)*2;
		if bfcc>0 and bfcc<1 then{
			diff = arcsin(bfcc)/pi+.5
		}else{
			diff = 1;
		}
	}
	break;
	case uiz_spring:
	diff=(bf+0.10825)/8.8;//approximation
	break;
	case uiz_acceldecel:
	diff=arccos(1-2*bf)/pi
	break;
	case uiz_bounce_in:
	if bfc=1 then{diff=1}else{
	var bounces=3
	if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
	diff = sqrt(bfc)/bounces
	}
	break;
	case uiz_bounce_out:
	if bfc=0 then{diff=0}else{
	var bounces=3
	if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
	diff = (1-sqrt(1-bfc)/bounces)
	}
	break;
	case uiz_bounce_inout:
	var bounces=3
	if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
	if (bfc<0.5) then{
	diff = (sqrt(bfc*2)/bounces)/2
	}else{
	diff = (1-sqrt(1-(bfc-.5)*2)/bounces)/2+.5
	}
	diff=clamp(diff,0,1)
	break;
	case uiz_bounce_outin:
	var bounces=3
	if frac(argument1)>0 then{bounces=(1/frac(argument1))-1}
	if (bfc<0.5) then{
	diff = (1-sqrt(1-bfc*2)/bounces)/2
	}else{
	diff = sqrt((bfc-.5)*2)/bounces/2+.5
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
	if (bfc<0.5) then{//approximated
	diff=arcsin(39*bfc/20)/(2*pi)
	}else{
	diff=arcsin(39*(bfc-1)/20)/(2*pi)+1
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
	if (bfc<0.5) then{
	diff=(1-(power(((1-bfc*2)+0.38)/43.5,1/1.63)+0.87))/2;//approximation
	}else{
	diff=0.5+(power(((bfc-.5)*2+0.38)/43.5,1/1.63)+0.87)/2;//approximation
	}
	break;
	}
	return diff;



}
