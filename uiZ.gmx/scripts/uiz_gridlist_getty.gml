///INTERNAL UIZ SCRPT DONT USUE
if argument0<0 then{
//if argument0<(scroll mod h) then{
        selectedy=-1;
    }else{
        selectedy=((argument0+scroll) div h);
        if selectedy>=ds_grid_height(maingrid) then{
            selectedy=-1;
        }
    }
if selectedy=-1 then{
cur_hat=-1;
cur_nhat=-1;
}else{
cur_hat=selectedy*h-scroll;
cur_nhat=cur_hat+h;
}
