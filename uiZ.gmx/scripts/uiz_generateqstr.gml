scblwidth = uiz_getposx(scrollbarsize, scrollbarsizetype)
qstr = uiz_gettextlines_contained_infy(value, iwidth)
if string_height(qstr) > height then {
    qstr = uiz_gettextlines_contained_infy(value, iwidth - scblwidth)
    if doscroll = false then {
        scroll = -1;
    }
    doscroll = true
    return true;
}
return false;
