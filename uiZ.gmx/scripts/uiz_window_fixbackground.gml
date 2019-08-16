var selected;
if global.selectedwindow=id then{selected=1}else{selected=0;}
var u_old=u;
if sizestatus=2 then{
u=selected*2+1;
}else{
u=selected*2;
}
if u_old!=u then{
m=margin_normal;
switch(u){
case 1:
if margin_over>-1 then{m=margin_over;}
break;
case 2:
if margin_in>-1 then{m=margin_in;}
break;
case 3:
if margin_out>-1 then{m=margin_out;}
break;
}
uiz_fix_Background(u);
uiz_fix_Background_top(u);
}
