var u=uiz_c(obj_uiZ_3waybutton);
u.sprite=spr_uiZ_win31_calculatorbutton;
//u.posvalwpxdif=-buttonmargins;
//u.posvalwphdif=-buttonmargins;
switch(argument0){
case 0:
u.color=c_fuchsia;
u.textcolor=u.color;
switch(argument1){case 0: u.text="MC" break;case 1: u.text="MR" break;case 2: u.text="MS" break;case 3: u.text="M+" break;}
break;
case 1:
u.color=c_blue;
u.textcolor=u.color;
switch(argument1){case 0: u.text="7" break;case 1: u.text="4" break;case 2: u.text="1" break;case 3: u.text="0" break;}
break;
case 2:
u.color=c_blue;
u.textcolor=u.color;
switch(argument1){case 0: u.text="8" break;case 1: u.text="5" break;case 2: u.text="2" break;case 3: u.text="+/-" break;}
break;
case 3:
u.color=c_blue;
u.textcolor=u.color;
switch(argument1){case 0: u.text="9" break;case 1: u.text="6" break;case 2: u.text="3" break;case 3: u.text="." break;}
break;
case 4:
u.color=c_red;
switch(argument1){case 0: u.text="/" break;case 1: u.text="*" break;case 2: u.text="-" break;case 3: u.text="+" break;}
break;
case 5:
if argument1=3 then{
u.color=c_red;
}else{
u.color=c_aqua;
}
switch(argument1){case 0: u.text="sqrt" break;case 1: u.text="%" break;case 2: u.text="1/x" break;case 3: u.text="=" break;}
break;
}

return u;
