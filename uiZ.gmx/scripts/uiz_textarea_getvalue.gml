///uiz_textarea_getvalue(instanceid)
gml_pragma("forceinline");
with(argument0){
    var lsz = ds_list_size(textList);
    var ret = "";
    for(var i=0;i<lsz;i++){
        ret += textList[| i];
    }
    return ret;
}
return "";
