//setup frameset
frameset=uiz_frameset_create()
uiz_setparent(frameset,window)
a1=uiz_framedivisionvertical(frameset,0.4,fc,1,xtra)
f10=a1.frameat[0];
f11=a1.frameat[1];
uiz_fixframesetpos(frameset)

folderview=uiz_c(obj_uiZ_treelist)
uiz_setparent(folderview,f10)
folderview.posinframey=uiz_fill;
folderview.posinframex=uiz_fill;
//folderview.usexml=folders;
uiz_treelist_setxml(folderview, folders);
uiz_treelist_onClick(folderview, uiz_win31_filemanager_clickFolder)
uiz_treelist_onDrag(folderview, uiz_win31_filemanager_dragFolder)
//folderview.showtags=false;//don't show files, just folders
uiz_fixgeneralpos(folderview)

fileview=uiz_c(obj_uiZ_gridlist)
uiz_setparent(fileview,f11)
fileview.posinframey=uiz_fill;
fileview.posinframex=uiz_fill;
toplist=ds_list_create()
ds_list_add(toplist,"name","size","date")
fileview.mainlist=toplist;
//create files
//namelist=ds_list_create()
//ds_list_add(namelist,"virus.exe","someohterfile.txt","what you doing?")

//var xmltree=uiz_xml_gettree(folders,"C:/somefolder/anotherfolder */")
/*
var xmlat=uiz_xml_gethandle(folders,xmltree)
namelist=uiz_xml_makelistfromattributes_at(folders,xmlat,"name")
uiz_xml_unloadtree(xmltree)
sizelist=ds_list_create()
ds_list_add(sizelist,"1.4mb","1kb","5gb")
datelist=ds_list_create()
ds_list_add(datelist,"9/10/1999 24:05","29/10/2016 6:30","8/10/3333 8:30")
listlist=ds_list_create()
ds_list_add(listlist,namelist,sizelist,datelist)
fileview.listlist=listlist;
*/
fileview.maingrid = ds_grid_create(3,1);
fileview.maingrid[# 0,0]="Select a file on the left";
fileview.maingrid[# 1,0]="";
fileview.maingrid[# 2,0]="";

uiz_fixgeneralpos(fileview)
