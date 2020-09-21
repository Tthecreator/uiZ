//uiz_positify(x) makes a number positive, but count negative number one higher/lower.
//This can be usefull if you want to have the positive/negative sign as a marker but in order have the number zero work you had to count down. (does this even make any sense?)
/*
Takes a number and makes it positive, but count up by one if the entered number was negative.
This can be useful if you want to have the positive/negative sign as a marker but don't want 0 to always positive, thus counting one down. This function can reverse that
*/
//if (live_call(argument0)) return live_result;
if is_undefined(argument0) then{
    sdbm("[uiZ|Warning] uiz_positify didn't get a number! (returning 0)");
    show_error("[uiZ|Warning] uiz_positify didn't get a number! (returning 0)",false);
    return 0;
}
return abs(argument0)+min(0,sign(argument0));
