/// @description uiz_draw_sprite_tiles_rotation(sprite, img, x1, y1, x2, y2, repeatX, repeatY, color, alpha, outerEdgeX, outerEdgeY, rotate)
/// @param sprite
/// @param  img
/// @param  x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  repeatX
/// @param  repeatY
/// @param  color
/// @param  alpha
/// @param  outerEdgeX
/// @param  outerEdgeY
/// @param  rotate
function uiz_draw_sprite_tiles_rotation(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12) {
	/*
	A function drawing a sprite an x number of times on a square/rectangle from point (x1,y1) to (x2,y2). 
	Repeatx and repeaty must be numbers above 0, but can be a decimal number.
	This means you can for example give repeatx a value of 2.5 and it will draw the sprite 2 times, and than another halve of that sprite will be added.
	It is recommended that you set gpu_set_texrepeat to false, else artifacts may occur. 
	The outerEdge can be set to any other value then 0 when you manually add a pixel border around your sprite. This is to prevent your sprite from blending in empty alpha

	rotate can be set to:
	0: no rotation
	90,
	180,
	270.
	NO OTHER VALUES ARE ALLOWED
	*/
	//globalvar deb;

	var repx=floor(argument6)
	var repy=floor(argument7)
	var oprepx=frac(argument6)
	var oprepy=frac(argument7)
	var x1=round(min(argument2,argument4));
	var y1=round(min(argument3,argument5));
	var x2=round(max(argument2,argument4));
	var y2=round(max(argument3,argument5));
	var width=x2-x1;
	var height=y2-y1;
	var outerEdgeX=argument10;
	var outerEdgeY=argument11;
	var sw=width/argument6
	var sh=height/argument7

	var rotation = round((argument12/90) mod 4)*90

	switch(rotation){
	    default:
	    case 0:      
	        var sprw = sprite_get_width(argument0)-outerEdgeX*2;
	        var sprh = sprite_get_height(argument0)-outerEdgeY*2;
	        var scx=sw/sprw
	        var scy=sh/sprh
	        var addh = 0;
	        var addw = 0;
	        var swapscale = false;
	        var osw=sprw*oprepx;
	        var osh=sprh*oprepy; 
	        var osh2=sprh;
	        var osw2=sprw;
	        var osh3=osh;
	        var osw3=osw;
	        var addHalfW = 0;
	        var addHalfH = 0;
	        var addHalfWR = 0;
	        var addHalfWB = 0;
	    break;
	    case 90:
	        var sprw = sprite_get_width(argument0)-outerEdgeX*2;
	        var sprh = sprite_get_height(argument0)-outerEdgeY*2;
	        var scy=sw/sprh
	        var scx=sh/sprw
	        var addh = sh;
	        var addw = 0;
	        var swapscale = true;
	        var osw=sprw;
	        var osh=sprh;
	        var osh2=sprh*oprepx;
	        var osw2=sprw*oprepy;
	        var osh3=osh2;
	        var osw3=osw2;
	        var addHalfW = sprite_get_width(argument0)*(1-oprepy);
	        var addHalfH = 0;
	        var addHalfWR = 0;
	        var addHalfWB = 0;
	    break;
	    case 180:
	        var sprw = sprite_get_width(argument0)-outerEdgeX*2;
	        var sprh = sprite_get_height(argument0)-outerEdgeY*2;
	        var scx=sw/sprw
	        var scy=sh/sprh
	        var addh = sh;
	        var addw = sw;
	        var swapscale = false;
	        var osw=sprw*oprepx;
	        var osh=sprh*oprepy; 
	        var osh2=sprh;
	        var osw2=sprw;
	        var osh3=osh;
	        var osw3=osw;
	        var addHalfW = 0;
	        var addHalfH = sprite_get_height(argument0)*(1-oprepy);
	        var addHalfWR = sprite_get_width(argument0)*(1-oprepx);
	        var addHalfWB = 0;
	    break;
	    case 270:
	        var sprw = sprite_get_width(argument0)-outerEdgeX*2;
	        var sprh = sprite_get_height(argument0)-outerEdgeY*2;
	        var scy=sw/sprh
	        var scx=sh/sprw
	        var addh = 0;
	        var addw = sw;
	        var swapscale = false;
	        var osw2=sprw*oprepx;
	        var osh2=sprh*oprepy; 
	        var osh=sprh;
	        var osw=sprw;
	        var osh3=osh2;
	        var osw3=osw2;
	        var addHalfW = 0;
	        var addHalfH = 0;
	        var addHalfWR = 0;
	        var addHalfWB = sprite_get_height(argument0)*(1-oprepx);
	    break;
	}

	var osx=repx*sw+x1;
	var osy=repy*sh+y1;

	for(var i=0;i<repx;i++){
	for(var e=0;e<repy;e++){
	//draw normally without half sprites
	draw_sprite_general(argument0,argument1,outerEdgeX,outerEdgeY,sprw,sprh,x1+sw*i+addw,y1+sh*e+addh,scx,scy,rotation,argument8,argument8,argument8,argument8,argument9)
	}

	}

	//check for half sprites on x
	if oprepx>0 then{
	for(var e=0;e<repy;e++){
	    draw_sprite_general(argument0,argument1,outerEdgeX + addHalfWR,outerEdgeY + addHalfWB,osw,osh2,osx+addw*oprepx,y1+sh*e+addh,scx,scy,rotation,argument8,argument8,argument8,argument8,argument9)
	}
	}

	//check for half sprites on y
	if oprepy>0 then{
	for(var i=0;i<repx;i++){
	    draw_sprite_general(argument0,argument1,outerEdgeX + addHalfW,outerEdgeY + addHalfH,osw2,osh,x1+sw*i+addw,osy+addh*oprepy,scx,scy,rotation,argument8,argument8,argument8,argument8,argument9)
	}
	}


	if oprepx>0 and oprepy>0 then{
	draw_sprite_general(argument0,argument1,outerEdgeX + addHalfW  + addHalfWR,outerEdgeY + addHalfH + addHalfWB,osw3,osh3,osx+addw*oprepx,osy+addh*oprepy,scx,scy,rotation,argument8,argument8,argument8,argument8,argument9)
	}



}
