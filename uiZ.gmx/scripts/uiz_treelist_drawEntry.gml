///uiz_treelist_drawEntry(item)
var i = argument0;
var h = fontHeight;
var hi = argument1;
var srlx = argument2;

var sprl = spriteList[|i];
var sprite = sprl>>7;
var img = sprl mod 7;
var name = textList[|i];
var miscl = indentEnabledAndBoxList[|i];
//var nextPosition = miscl >> 8;
var nextPosition = nextItemList[|i];
var indent = miscl >> 3;//(miscl >> 3) mod 32;
var enabled = (miscl >> 2) mod 2;
var boxState = miscl mod 4;

var tcol = textcolor;

if currentSelectionList=i then{
    if kmouseover=uiz_mouseclick then{
        draw_square(rx,ry + hi,srlx,ry+ hi+h-1,backselcolor,backselalpha);
        tcol = textselcolor;
        draw_set_alpha(1);
    }else{
        draw_square(rx,ry + hi,srlx,ry+ hi+h-1,backoncolor,backonalpha);
        tcol = textoncolor;
        draw_set_alpha(1);
    }
}else{
    draw_square(rx,ry + hi,srlx,ry+ hi+h,backcolor,backalpha);
    tcol = textcolor;
    draw_set_alpha(1);
}


var boxadd=indent*h;

//draw hierarchy lines:
if hierarchyLines and indent>0 then{
    var linew = hierarchyLineMaxWidth;
    var lineMinH = ry + hi - 1;
    var lineMaxH = ry + hi + h;
    draw_set_color(hierarchyLineColor);
    var hierarchyItems = hierarchyItemList[|i];
    //draw hierarchy lines from higher levels
    for(var lvl = 1; lvl<indent; ++lvl){
        var doIndent = (hierarchyItems >> (lvl-1)) mod 2;//get bit
        if doIndent then{
            var linex = rx+(lvl-0.5)*h;
            draw_line_width(linex, lineMinH, linex, lineMaxH, linew);
            
        }
        linew = max(hierarchyLineMinWidth, linew - hierarchyLineDecreaseWidth);
    }
    
    
    //draw current hierarchy lines
    var lineh = ry+hi+h/2;
    var linex = rx+(indent-0.5)*h;
    
    draw_line_width(linex,lineh,rx+boxadd,lineh,linew);
    if (nextPosition<ds_list_size(nextItemList) and (indentEnabledAndBoxList[|nextPosition]>>3)>=indent and ((hierarchyItems >> (lvl-1)) mod 2)){//if next item is below this one and on the same level
        draw_line_width(linex,lineMinH,linex,lineMaxH,linew);
    }else{//no valid item below this one
        draw_line_width(linex,lineMinH,linex,lineh+floor(linew/2),linew);
    }
    boxadd += 1;
}

if boxState!=uiz_treelist_boxState_noBox then{
    //we need to draw a box
    draw_sprite_ext(boxsprite, boxState-1, rx+boxadd , ry + hi, h / sprite_get_width(boxsprite), h / sprite_get_height(boxsprite), 0, boxcolor, alpha)
    boxadd += h;
}else{
    if sprite=-1 then{
        if hierarchyLines and indent>0 then{
            draw_line_width(rx+boxadd-1,lineh,rx+boxadd+h*0.5,lineh,linew);
        }
        boxadd += h+margin;
        
    }
}
boxadd += margin;
if enabled {
    if sprite!=-1 and sprite_exists(sprite) then{//don't draw sprite
        draw_sprite_ext(sprite,img,rx+boxadd,ry + hi,h / sprite_get_width(sprite),h / sprite_get_height(sprite),0,c_white,alpha)
        boxadd+=h+margin;   
    }
    //boxadd += h+margin;
    draw_set_color(tcol);
    draw_text(rx+boxadd,ry + hi,name);
}

//if currentSelectionList=i then{draw_set_color(textcolor);draw_set_alpha(1);} //reset text color for next item
//return i+1;
return nextPosition;
