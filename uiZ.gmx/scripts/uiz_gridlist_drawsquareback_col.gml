///INTERNAL UIZ SCRIPT, DO NOT USE!
//if live_call() return live_result;
if selectedx < ds_list_size(mainlist)-1 then{
    draw_square(rx+cur_wat,yh,rx+cur_nwat-1,rly,argument0,argument1*alpha);
}else{
    draw_square(rx+cur_wat,yh,rx+cur_nwat,rly,argument0,argument1*alpha);
}
