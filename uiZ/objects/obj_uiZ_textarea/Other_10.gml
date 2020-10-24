//sdbm("drawing textarea",rx,ry,rlx,rly,irandom(10))
//draw_set_color(c_red);
//draw_rectangle(rx-100,ry-100,rlx+100,rly+100,0);
//draw_set_color(c_white);
if uiz_cntn() then{
//draw background
uiz_back()

//setup text settings
draw_set_valign(fa_top)
draw_set_halign(fa_left)

//set style
if font>-1 then{draw_set_font(font);}
draw_set_color(textcolor);


//get what lines should be drawn
var listFrom = uiz_textarea_getListFrom();
var listTo = uiz_textarea_getListTo(listFrom);

if redoSelection=true and hasSelection=true then{
    var listFrom = max(min(last_selectionMinLine,selectionMinLine),listFrom);
    var listTo = min(max(last_selectionMaxLine,selectionMaxLine),listTo);
}

var listFromFloor = floor(listFrom);
var listToCeil = ceil(listTo);

redoSelection=false;

if doscroll=true then{
var scrbx = ilx-scblwidth-1;
}else{
var scrbx = ilx;
}

//draw scrollbar
if doscroll=true then{
uiz_drawscrollbar_vertical_draw(ceil(scrbx+1),iy,ilx,ily,scrollbarsprite,scrollbarcolor,scrollbartexturemode,scroll,scrolllines)
}

if uiz_selfmarked==false then{
    uiz_contain_custom(ix,iy,scrbx,ily);
}

//draw selection background on full lines
var begSelMainBodyY=iy+max(0,fontHeight*(selectionMinLine+1)-listFromPx)
if(selectionMaxLine-selectionMinLine>1 && begSelMainBodyY<ily && hasSelection){
    //draw_square(selectionMinX,iy,selectionMaxX,lineY+fontHeight,selectbackcolor,1);
    draw_square(ix,begSelMainBodyY,scrbx,min(ily,iy+fontHeight*(selectionMaxLine)-listFromPx),selectbackcolor,1);
    //draw_square(ix,iy+(fontHeight+1)*(selectionMaxLine)-listFromPx,selectionMaxX,ily,selectbackcolor,1);
}

//sdbm("listcolorsel: ",listFromCeil,selectionMinLine,listToFloor,selectionMaxLine)
//set color for lines
//if selectionMinLine>=0 && selectionMinLine<listFromFloor  then{
//if selectionMinLine>=0 && selectionMinLine<=listFrom-clippedLineEnableFactor && selectionMaxLine>=listFrom-clippedLineEnableFactor then{// && selectionMaxLine>listFromFloor then{
if hasSelection && selectionMinLine>=0 && selectionMinLine<listFromFloor && selectionMaxLine>=listFromFloor then{
    draw_set_color(selecttextcolor);
}else{
    draw_set_color(textcolor);
}
//acutally draw the lines

/*
//draw first (clipped) line
if listFromFloor!=listFrom && (listFrom-listFromFloor<clippedLineEnableFactor) then{
 if hasSelection then{
    var lineY = iy+fontHeight*listFromFloor-listFromPx;
    if listFromFloor=selectionMinLine && listFromFloor=selectionMaxLine then{
        uiz_textarea_drawText(ix,iy,string_copy(textList[| listFromFloor],1,selectionMinChar));
        uiz_textarea_drawText(selectionMaxX,iy,string_copy(textList[| listFromFloor],selectionMaxChar+1,string_length(textList[|listFromFloor]))); 
        draw_square(selectionMinX,iy,selectionMaxX,lineY+fontHeight,selectbackcolor,1);
        draw_set_color(selecttextcolor);
        uiz_textarea_drawText(selectionMinX,iy,string_copy(textList[| listFromFloor],selectionMinChar+1,selectionMaxChar-selectionMinChar)); 
        draw_set_color(textcolor);
    }else if listFromFloor=selectionMinLine then{
        uiz_textarea_drawText(ix,iy,string_copy(textList[| listFromFloor],1,selectionMinChar));
        draw_square(selectionMinX,iy,scrbx,lineY+fontHeight,selectbackcolor,1);
        draw_set_color(selecttextcolor);
        uiz_textarea_drawText(selectionMinX,iy,string_copy(textList[| listFromFloor],selectionMinChar+1,string_length(textList[| listFromFloor])-selectionMinChar)); 
    }else if listFromFloor=selectionMaxLine then{
        draw_square(ix,iy,selectionMaxX,lerp(iy,lineY,1-(listFrom-listFromFloor)*2)+fontHeight,selectbackcolor,1);
        draw_set_color(selecttextcolor);
        uiz_textarea_drawText(ix,iy,string_copy(textList[| listFromFloor],1,selectionMaxChar)); 
        draw_set_color(textcolor);
        //draw surrounding selection
        uiz_textarea_drawText(selectionMaxX,iy,string_copy(textList[| listFromFloor],selectionMaxChar+1,string_length(textList[|listFromFloor]))); 
    }
    }else{
        uiz_textarea_drawText(ix,iy,textList[| listFromFloor]);
    }
     
}
*/


//if selectionMinLine>=0 && selectionMaxLine>=0 && listFromCeil<=selectionMaxLine && listToFloor>=selectionMinLine then{
//text begins with selected text
//draw_set_color(selecttextcolor);
//}


//draw main lines
//for(var i=listFromCeil;i<listToFloor;i++){
for(var i=listFromFloor;i<listToCeil;i++){
    var lineY = iy+fontHeight*i-listFromPx;
    if i>=selectionMinLine && i<=selectionMaxLine && hasSelection then{
        if i=selectionMinLine && i=selectionMaxLine then{
            //draw surrounding selection
            uiz_textarea_drawText(ix,lineY,string_copy(textList[| i],1,selectionMinChar));
            uiz_textarea_drawText(selectionMaxX,lineY,string_copy(textList[| i],selectionMaxChar+1,string_length(textList[|i]))); 
            //draw selecion itself
            draw_square(selectionMinX,lineY,selectionMaxX,lineY+fontHeight,selectbackcolor,1);
            draw_set_color(selecttextcolor);
            uiz_textarea_drawText(selectionMinX,lineY,string_copy(textList[| i],selectionMinChar+1,selectionMaxChar-selectionMinChar)); 
            draw_set_color(textcolor);
            continue;
        }
        
        if i=selectionMinLine then{
            //draw surrounding selection
            uiz_textarea_drawText(ix,lineY,string_copy(textList[| i],1,selectionMinChar));
            //draw selection itself
            draw_square(selectionMinX,lineY,scrbx,lineY+fontHeight,selectbackcolor,1);
            draw_set_color(selecttextcolor);
            uiz_textarea_drawText(selectionMinX,lineY,string_copy(textList[| i],selectionMinChar+1,string_length(textList[| i])-selectionMinChar)); 
            continue;
        }
        
        if i=selectionMaxLine then{
            //draw selection itself
            draw_square(ix,lineY,selectionMaxX,lineY+fontHeight,selectbackcolor,1);
            draw_set_color(selecttextcolor);
            uiz_textarea_drawText(ix,lineY,string_copy(textList[| i],1,selectionMaxChar)); 
            draw_set_color(textcolor);
            //draw surrounding selection
            uiz_textarea_drawText(selectionMaxX,lineY,string_copy(textList[| i],selectionMaxChar+1,string_length(textList[|i])-selectionMaxChar)); 
            continue;
        }
           //we came here so we have fully selected line, just draw the text outside this if. 
        }
        
    
    uiz_textarea_drawText(ix,lineY,textList[| i]); 

       
    
}

//draw last (clipped) line
/*
if listTo!=listToFloor && (listTo-listToFloor>clippedLineEnableFactor) then{
    draw_set_valign(fa_bottom);
    if (listToFloor==selectionMaxLine || listToFloor==selectionMinLine) && hasSelection then{
        var lineY = iy+fontHeight*listToFloor-listFromPx;
        if listToFloor=selectionMaxLine then{
            if (hasSelection){
                draw_square(ix,min(ily,max(ily-fontHeight,iy+fontHeight*(selectionMaxLine)-listFromPx)),selectionMaxX,ily,selectbackcolor,1);
                draw_set_color(selecttextcolor);
            }
            uiz_textarea_drawText(ix,ily,string_copy(textList[| listToFloor],1,selectionMaxChar)); 
            draw_set_color(textcolor);
            //draw surrounding selection
            uiz_textarea_drawText(selectionMaxX,ily,string_copy(textList[| listToFloor],selectionMaxChar+1,string_length(textList[|listToFloor])));
        }else{//listToFloor=selectionMinLine
            //draw normal selection
            uiz_textarea_drawText(ix,ily,string_copy(textList[| listToFloor],1,selectionMinChar));  
            if (hasSelection) then{
                //draw selection
                draw_square(selectionMinX,min(ily,lerp(ily-fontHeight,iy+fontHeight*(selectionMinLine)-listFromPx,1-(listFrom-listFromFloor)*2)),scrbx,ily,selectbackcolor,1);
                draw_set_color(selecttextcolor);
            }
            uiz_textarea_drawText(selectionMinX,ily,string_copy(textList[| listToFloor],selectionMinChar+1,string_length(textList[|listToFloor])));
        }
        
    }else{
        uiz_textarea_drawText(ix,ily,textList[| listToFloor]);
    }
    
}
*/

uiz_containend()
}

/* */
/*  */
