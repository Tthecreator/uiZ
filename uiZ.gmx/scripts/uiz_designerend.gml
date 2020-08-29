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
uiz_destroyDsList(uiznewdeslist)
uiz_destroyDsList(spritelist)
uiz_destroyDsList(fontlist)
uiz_destroyDsList(loadfilelist)
uiz_destroyDsList(uiznewversionlist)
uiz_destroyDsList(uizchangedfilelist)
uiz_destroyDsList(global.newparentlist)
uiz_destroyDsList(global.newparentnamelist)

uiz_destroyDsList(global.texconstantlist)
uiz_destroyDsList(global.texconstantnamelist)

uiz_destroyDsList(global.xconstantlist)
uiz_destroyDsList(global.xconstantnamelist)

uiz_destroyDsList(global.xyconstantlist)
uiz_destroyDsList(global.xyconstantstringlist)
uiz_destroyDsList(global.xyconstantnamelist)


uiz_destroyDsList(global.yconstantlist)
uiz_destroyDsList(global.yconstantnamelist)

uiz_destroyDsList(global.fyconstantlist)
uiz_destroyDsList(global.fyconstantnamelist)
uiz_destroyDsList(global.fxconstantlist)
uiz_destroyDsList(global.fxconstantnamelist)

uiz_destroyDsList(global.animconstantlist)
uiz_destroyDsList(global.animconstantnamelist)

uiz_destroyDsList(global.xcenterconstantlist)
uiz_destroyDsList(global.xcenterconstantnamelist)

uiz_destroyDsList(global.ycenterconstantlist)
uiz_destroyDsList(global.ycenterconstantnamelist)

uiz_destroyDsList(global.texscriptconstantlist)
uiz_destroyDsList(global.texscriptconstantnamelist)



uiz_destroyDsList(viewtypelist)

//uiz_xml_unloadfile(global.xml)
