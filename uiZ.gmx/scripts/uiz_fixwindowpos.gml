//uiz_fixobjectpos(argument0)

var t=argument0;
with(t){
uiz_window_fixbackground();
bars=uiz_getposy(barsize,barsizevaltype);
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

