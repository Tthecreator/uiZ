///INTERNAL UIZ SCRIPT, DO NOT USE!
var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
    argument_arr[i] = argument[i];
}
if (live_call_ext(argument_arr)) return live_result;
if selectedx < ds_list_size(mainlist)-1 then{
    draw_square(rx+cur_wat,yh+cur_hat,rx+cur_nwat-1,yh+cur_nhat,argument0,argument1*alpha);
}else{
    draw_square(rx+cur_wat,yh+cur_hat,rx+cur_nwat,yh+cur_nhat,argument0,argument1*alpha);
}
