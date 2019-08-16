///uiz_drawdslist_checkheight()
//INTERNAL SCRIPT BY UIZ, PLEASE DON'T USE.
var sz=ds_list_size(uselist)
var h=margin*sz-height
for(var i=0;i<sz;i++){
h+=string_height(string(uselist[| i]))
}
return h;
