///uiz_stringbox_insertchars(char)//inserts a char at the typepos
//doesn't work when there is a selection
var strlen=string_length(argument0);
if strlen<=0 then{
sdbm("[uiZ|ERROR] Something tried to type an invalidly sized char into a stringbox");
}

str_real = string_copy(str_real,1,typepos_real) + argument0 + string_copy(str_real,typepos_real+1,str_real_size-typepos_real);
str_real_size+=strlen;

str_dis = string_copy(str_dis,1,typepos_dis) + argument0 + string_copy(str_dis,typepos_dis+1,str_dis_size-typepos_dis);
str_dis_size+=strlen;
str_dis_end+=strlen;
var charWidth = string_width(argument0);
str_dis_width+=charWidth;
uiz_stringbox_typepos_set(typepos_real+strlen,typepos_dis_px+charWidth);


while(str_dis_width>iwidth && str_dis_size>0){

//remove characters from the end
str_dis_width-=string_width(string_char_at(str_dis,str_dis_size));
str_dis_size--;
str_dis = string_copy(str_dis,1,str_dis_size);
str_dis_end--;
}

uiz_stringbox_typer_remainInView();
