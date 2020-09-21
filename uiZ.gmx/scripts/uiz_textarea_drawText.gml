///uiz_textarea_drawText(x,y,string)

//default
gml_pragma("forceinline");
draw_text(argument0,argument1,argument2);


//debug (draw certain undrawable characters line newline)
/*
var w = argument0;
for(var i = 1; i<=string_length(argument2);++i){
    var c = string_char_at(argument2,i);
    switch(c){
        case chr($0A)://newline
            draw_square(w,argument1,w+10,argument1+10,c_red,1);
            w+=10;
        break;
        case chr($0D)://carriage return
            draw_square(w,argument1,w+10,argument1+10,c_blue,1);
            w+=10;
        break;
        case chr($A1)://substitute
            draw_square(w,argument1,w+10,argument1+10,c_green,1);
            w+=10;
        break;
        default:
            draw_text(w,argument1,c);
            w += string_width(c);        
    }   
}
//*/
