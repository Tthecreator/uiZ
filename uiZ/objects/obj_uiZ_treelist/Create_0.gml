//#define uiZ
//#sprite images
//#spritenum 8
//#objectversion 1.0
uiz_objinit()
margin=1//v//margin//
boxcolor=c_black//c//box color//
boxoncolor=c_gray//c//box on color//
boxincolor=c_ltgray//box in color//
boxsprite=spr_uiZ_plusminbox//p//box sprite//
font=-1//f//font//
textcolor=c_black//c//text color//
textoncolor=c_blue//c//text on color//
textselcolor=c_blue//c//text selection color//
backcolor=c_white//c//item back color//
backoncolor=c_ltgray//c//item back on color//
backselcolor=c_ltgray//c//item back click color//
backdragcolor=$ffd1ab//c//item back color while dragging//
backalpha=0//v//item back alpha//
backonalpha=0.5//v//item back on alpha//
backselalpha=1//v//item back selection alpha//
backdragalpha=0.5//item back alpha while dragging//

updateXML=true//b//automatically update xml//
updateXMLBoxState=true//b//automatically update box expanded/collapsed state in xml//

hierarchyLines=true//b//enable hierarchy line//
hierarchyLineMaxWidth=5//v//hierarchy line start width in px//
hierarchyLineMinWidth=1//v//hierarchy line minimum width in px//
hierarchyLineDecreaseWidth=1//v//hierarchy line width decrease per hierarchy level in px//
hierarchyLineColor=c_black//v//hierarchy line color//

scrollbarwidth=16//v//scrollbar width//
scrollbarwidthtype=px//z//scrollbar width type//
scrollbarsprite=spr_uiZ_scrollbar//p//scrollbar sprite//
scrollbarcolor=c_white//c//scrollbar color//
scrollbarbacktexmode=uiz_texturemode_fill_edgeless//t//scrollbar texturemode//
scrollspeed=0.5//v//scrollspeed in dp//
scrollbarAnimation=uiz_sin_inout//a//scrollbar animation//
scrollbarAnimationTime=0.2//v//scrollbar animation time//

onDragScript = uiz_treelist_dragScript_move;//this script is called whenever an item is dragged from one position to the other. The arguments are:
//0: id of treelist
//1: the handle/id of the item being dragged
//2: destinationItem, the handle/id of the item the mouse is currently over
//3: a float between 0 and 1 of how far the mouse is currently over the destinationItem.
onClickScript = uiz_treelist_clickScript_switch_node///this script is called whenever the user clicks an item in the list

update=0;
updated=0;

fontHeight = 0;
indentEnabledAndBoxList = ds_list_create();//what level of indentation the list has (>>3), if the item is enabled (>>2 mod 2), and what state the +/- box has (mod 4).
nextItemList = ds_list_create();//what the next listable id of the next item is.
spriteList = ds_list_create();//what icon the list should draw (<<7) and what subimage to use (mod 3) (-1 for no sprite)
textList = ds_list_create();//the text displayed in the entry
handleList = ds_list_create();//handle to the corrosponding xml handle
hierarchyItemList = ds_list_create();//contains per item ID which hierarchy levels should be shown. (each bit is a level with the leastsignifican bit being indent level 1)
expandedLines = 0;

maxHierarchyLevel = 0;

doscroll = false;
scrolllines = 0;
scrollBarW = uiz_getposx_simple(scrollbarwidth,scrollbarwidthtype);
scrollBarX = 0;
startList = 0;//at what item id the list should start. 
startPos = 0;//at what item position the list should start
startOffset = 0;//pixel offset to start the list

lastSelectionPos = -1;
lastSelectionList = -1;
currentSelectionList = -1;
currentSelectionPos = -1;
kmouseover_last = 0;

draggingItem = -1;
draggingItemRelativePos = -1;
drawDraggingItem = -1;
draggingItemCandidate = -1;
draggingItemCandidateRelativePos = -1;
draggingSnapX = 0;
draggingSnapY = 0;
draggingStartY = 0;

updateScroll = false;
updateMouseAreas = false;
updateDragArea = false;


selectxml=-1;
scroll=uiz_drawscrollbar_init();
scrollat=0;
//startscrollat=0;
//maxscrolllines=0
usexml=-1

uiz_xml_init();
