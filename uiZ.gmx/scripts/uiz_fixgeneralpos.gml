///uiz_fixgeneralpos(object)
switch(argument0.id.object_index){
case obj_uiZ_textarea:
uiz_fixtextareapos(argument0);
break;
case obj_uiZ_frame:
uiz_fixframepos(argument0);
break;
case obj_uiZ_textplane:
uiz_fixtextplanepos(argument0)
break;
case obj_uiZ_slideframe:
uiz_fixslideframepos(argument0);
break;
case obj_uiZ_sliderstruct:
uiz_fixsliderstructpos(argument0);
break;
case obj_uiZ_grid:
uiz_fixgridpos(argument0);
uiz_resizegridrowframes(argument0);
uiz_resizegridcolframes(argument0);
break;
case obj_uiZ_frameset:
uiz_fixframesetpos(argument0)
break;
case obj_uiZ_framerowanchor:
uiz_fixanchorpos(argument0)
break;
case obj_uiZ_framecolanchor:
uiz_fixanchorpos(argument0)
break;
case obj_uiZ_sprbutton:
uiz_fixsprbuttonpos(argument0)
break;
case obj_uiZ_menuholder:
uiz_fixmenuholderpos(argument0)
break;
case obj_uiZ_window:
uiz_fixwindowpos(argument0)
break;
case obj_uiZ_text:
uiz_fixtextpos(argument0)
break;
case obj_uiZ_drawtextlines:
uiz_fixtextlinespos(argument0)
break;
case obj_uiZ_drawdslist:
uiz_fixdslistpos(argument0)
break;
case obj_uiZ_surfaceholder:
uiz_fixsurfaceholderpos(argument0);
break;
case obj_uiZ_slider:
uiz_fixsliderpos(argument0);
break;
case obj_uiZ_slider_2col:
uiz_fixsliderpos_2col(argument0);
break;
case obj_uiZ_slickslider:
uiz_fixslicksliderpos(argument0);
break;
case obj_uiZ_stringbox:
uiz_fixstringboxpos(argument0);
break;
case obj_uiZ_tabslider:
uiz_fixtabsliderpos(argument0);
break;
case obj_uiZ_tabs:
uiz_fixtabspos(argument0);
break;
case obj_uiZ_gridlist:
uiz_fixgridlistpos(argument0);
break;
case obj_uiZ_dropdown:
uiz_fixdropdownpos(argument0);
break;
case obj_uiZ_framescrollbar:
uiz_fixframescrollbarpos(argument0);
break;
case obj_uiZ_switch:
uiz_fixswitchpos(argument0);
break;
case obj_uiZ_treelist:
uiz_fixtreelistpos(argument0);
break;
case obj_uiZ_colorboxes:
uiz_fixcolorboxes(argument0);
break;
case obj_uiZ_loadingbar:
uiz_fixloadingbarpos(argument0);
break;
default:
uiz_fixobjectpos(argument0);
break;

}
