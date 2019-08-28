//uiz_fixobjectpos(argument0)

var t=argument0;
with(t){
uiz_fix_Background();
uiz_fix_Background_top();
bars=uiz_getposy(barsize,barsizevaltype);
if sizestatus=2 then{//disable background margins if the window is maximized
    bkmar=0;
}
uiz_fixpositioninframe()

//calculate end margins
uiz_fix_Base_endmargin();
end_topframemargin=ceil(end_topframemargin+bars);//add top window bar as margin


uiz_window_fixminwh();
width=max(width,minw);
height=max(height,minh);

uiz_fix_Base_Pos_Values()
global.uiz_fix_updates++;
uiz_fix_Base_View();

uiz_fix_Base_iValues()

}

