/// @description uiz_menu_scroll_add(towho,value)
/// @param towho
/// @param value
function uiz_menu_scroll_add(argument0, argument1) {
	//sdbm("scroll add menu!")
	with(argument0){
	scrolledlast=1
	if scrollway=uiz_horizontal then{
	if !(addx>35 and -argument1>=0) then{
	if addx>=0 and -argument1>=0 then{
	addx-=argument1*power(max(1,addx),-0.9)}else{
	addx-=argument1}
	}
	}else{
	//check if too high, at begginning of the list
	if !(addy>35 and argument1<=0) then{
	if addy>=0 and argument1<=0 then{
	addy-=argument1*power(max(1,addy),-0.9)}else{
	//check if to low, at the end of list
	if !(-addy>=menulastpx+35 and argument1>=0) then{
	if -addy>=menulastpx and argument1>=0 then{
	//show_message(menulastpx+addy)
	addy-=argument1*power(max(1,-(menulastpx+addy)),-0.9)
	}else{
	addy-=argument1}}}
	}
	}
	uiz_fixChildren(id,1)
	}



}
