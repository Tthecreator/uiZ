var lsz = ds_list_size(textList);
var linesDone = 2;
var chars = 0;
for(var i=0;i<lsz;++i){
    var s = textList[| i];
    var sL = string_length(s);
    if (i==selection1Line){
        sdbm("Selection1Chars",chars+selection1Char)
        --linesDone;
    }
    if (i==selection2Line){
        sdbm("Selection2Chars",chars+selection2Char)
        --linesDone;
    }
    if linesDone ==0 then{exit}
    chars += sL
}
