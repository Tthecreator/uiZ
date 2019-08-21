//uiz_fixobjectpos(argument0)

var t=argument0;
with(t){
uiz_fix_Background();
uiz_fix_Background_top();
bars=uiz_getposy(barsize,barsizevaltype);
//uiz_fix_Base_Pos():
uiz_fixpositioninframe()
uiz_fix_Base_endmargin();

if sizestatus=2 then{
x=-end_leftframemargin;
y=-end_topframemargin;
width=parent.iwidth+end_leftframemargin+end_rightframemargin;
height=parent.iheight+end_topframemargin+end_bottomframemargin;
}
end_topframemargin=ceil(end_topframemargin+bars+bkmar);
uiz_window_fixminwh();
//width=max(width,bars*(1+button_cross+button_maximize)+end_leftframemargin+end_rightframemargin+1);
//height=max(end_topframemargin+end_bottomframemargin+1,height)
width=max(width,minw);
height=max(height,minh);

uiz_fix_Base_Pos_Values()
global.uiz_fix_updates++;
//sdbm("updating view of window")
uiz_fix_Base_View();

uiz_fix_Base_iValues()
}

