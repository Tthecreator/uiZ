image_spf_count += uiz_sc(image_spf);
if image_spf_count >= 1 then{
    image_spf_count = frac(image_spf_count);
    image_index++;
    if image_index >= sprite_get_number(sprite_index) then{
        image_index = 0;
    }
    uiz_updater_FixViews();
}


