///uiz_gridlist_selectionmode(instanceid,selectionmode[2],keepselection[false])
/*
What should be selected when the mouse hovers over the object.<br> You can choose for the following modes:
-0: Nothing will be selected.
-1: A single cell will be selected.
-2: A single row will be selected.
-3: A single column will be selected.
*/
argument0.selectionmode=argument1;
argument0.keepselection=argument2;
with(argument0){
    uiz_updater_FixViews();
    selectedx=-1;
    selectedy=-1;
    clickedx=-1;
    clickedy=-1;
    cur_wat=-1;
    cur_hat=-1;
    cur_nwat=-1;
    cur_nhat=-1;
    selectedx_old=-1;
    selectedy_old=-1;
}




