/// @description uiz_draw_sprite_tiles_flippedy(sprite,img,x1,y1,x2,y2,repeatx,repeaty,color,alpha)
/// @param sprite
/// @param img
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param repeatx
/// @param repeaty
/// @param color
/// @param alpha
function uiz_draw_sprite_tiles_flippedy(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	/*
	Does the same as uiz_draw_sprite_tiles, but then flips the image in the y axis.
	A function drawing a flipped sprite an x number of times on a square/rectangle from point (x1,y1) to (x2,y2). 
	Repeatx and repeaty must be numbers above 0, but can be a decimal number.
	This means you can for example give repeatx a value of 2.5 and it will draw the sprite 2 times, and than another halve of that sprite will be added.
	It is recommended that you set gpu_set_texrepeat to false, else artifacts may occur. 
	*/
	var repx=floor(argument6)
	var repy=floor(argument7)
	var oprepx=frac(argument6)
	var oprepy=frac(argument7)
	var x1=min(argument2,argument4);
	var y1=min(argument3,argument5);
	var x2=max(argument2,argument4);
	var y2=max(argument3,argument5);
	var width=x2-x1;
	var height=y2-y1;
	var sw=width/argument6
	var sh=height/argument7
	var scx=sw/sprite_get_width(argument0)
	var scy=sh/sprite_get_height(argument0)
	var osw=sprite_get_width(argument0)*oprepx;
	var osh=sprite_get_height(argument0)*oprepy;
	var osx=repx*sw+x1;
	var osy=argument7*sh+y1;
	for(var i=0;i<repx;i++){
	for(var e=0;e<repy;e++){
	//draw normally without half sprites
	draw_sprite_ext(argument0,argument1,x1+sw*(i),y1+sh*(e+1),scx,-scy,0,argument8,argument9)
	}
	}
	//draw_set_color(argument8)
	//draw_set_alpha(argument9)
	//check for half sprites on x
	if oprepx>0 then{
	for(var e=0;e<repy;e++){
	draw_sprite_part_ext(argument0,argument1,0,0,osw,sprite_get_height(argument0),osx,y1+sh*(e+1),scx,-scy,argument8,argument9)
	}
	}

	//check for half sprites on y
	if oprepy>0 then{
	for(var i=0;i<repx;i++){
	draw_sprite_part_ext(argument0,argument1,0,sprite_get_height(argument0)-osh,sprite_get_width(argument0),osh,x1+sw*(i),osy,scx,-scy,argument8,argument9)
	}
	}


	if oprepx>0 and oprepy>0 then{
	draw_sprite_part_ext(argument0,argument1,0,sprite_get_height(argument0)-osh,osw,osh,osx,osy,scx,-scy,argument8,argument9)
	}



}
