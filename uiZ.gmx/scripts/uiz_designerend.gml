if saveonexit=1 then{
sdbm("[uiZ,Designer:INFO]Saving your files!")
saveonexit=0
uiz_des_func_save()
}
sdbm("[uiZ,Designer:INFO]Destroying designerlists")

uiz_findfile_free()

if ds_exists(filelist,ds_type_list) then{ds_list_destroy(filelist)}

if ds_exists(aflist,ds_type_list) then{ds_list_destroy(aflist)}
if ds_exists(afobjlist,ds_type_list) then{ds_list_destroy(afobjlist)}
if ds_exists(afnamelist,ds_type_list) then{ds_list_destroy(afnamelist)}
if ds_exists(afsprlist,ds_type_list) then{ds_list_destroy(afsprlist)}
if ds_exists(afimglist,ds_type_list) then{ds_list_destroy(afimglist)}

if ds_exists(postypelist,ds_type_list) then{ds_list_destroy(postypelist)}
if ds_exists(postypelistlink,ds_type_list) then{ds_list_destroy(postypelistlink)}
uiz_destroydslist(uiznewdeslist)
uiz_destroydslist(spritelist)
uiz_destroydslist(fontlist)
uiz_destroydslist(loadfilelist)
uiz_destroydslist(uiznewversionlist)
uiz_destroydslist(uizchangedfilelist)
uiz_destroydslist(global.newparentlist)
uiz_destroydslist(global.newparentnamelist)

uiz_destroydslist(global.texconstantlist)
uiz_destroydslist(global.texconstantnamelist)

uiz_destroydslist(global.xconstantlist)
uiz_destroydslist(global.xconstantnamelist)

uiz_destroydslist(global.xyconstantlist)
uiz_destroydslist(global.xyconstantstringlist)
uiz_destroydslist(global.xyconstantnamelist)


uiz_destroydslist(global.yconstantlist)
uiz_destroydslist(global.yconstantnamelist)

uiz_destroydslist(global.fyconstantlist)
uiz_destroydslist(global.fyconstantnamelist)
uiz_destroydslist(global.fxconstantlist)
uiz_destroydslist(global.fxconstantnamelist)

uiz_destroydslist(global.animconstantlist)
uiz_destroydslist(global.animconstantnamelist)

uiz_destroydslist(global.xcenterconstantlist)
uiz_destroydslist(global.xcenterconstantnamelist)

uiz_destroydslist(global.ycenterconstantlist)
uiz_destroydslist(global.ycenterconstantnamelist)

uiz_destroydslist(global.texscriptconstantlist)
uiz_destroydslist(global.texscriptconstantnamelist)



uiz_destroydslist(viewtypelist)

//uiz_xml_unloadfile(global.xml)
