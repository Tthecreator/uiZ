/// @description uiz_getText_contained_noDots(string, width)
/// @param string
/// @param  width
function uiz_getText_contained_noDots(argument0, argument1) {
	/*
	This scripts handles SINGLE LINE strings.
	It makes breaks the string up so that it doesn't exceed the width given by cutting it off at the end without dots.
	For example, this can be useful if you have a button and don't want text to be drawn outside that button. 
	*/
	var width=argument1
	var str=argument0
	/*
	//get amount of characters:
	var chars = string_length(str);
	var charlength = string_width("-");//to calculate average char lengths
	var charstart;
	//make an estimate on whether the text is too big:
	    if(charlength*chars>width)then{
	        //text is likely too big.
	            charstart=width div charlength
	    }else{
	        //text is likely fine.
	            charstart=chars;    
	    }
	*/
	//go trough chars
	    length = string_byte_length(str);
	    total_width = 0;
	    dots_pos=0;
	    i_last=0;
	    str_dots="";
	    for(var i=1;i<=length;i++){
	        var byte = string_byte_at(str,i);//read a byte
	        var char_unicode;
	        if (byte>0){
	            //ascii
	            char_unicode=chr(byte);
	        }else{
	            byte=256+byte;
	            //some other unicode
	            var bytes=0;//how many extra bytes there are
	            var bytesize=0;
	            var bits=0;
	            var bitsover=0;
	            if(byte>=192){bytes=1; bytesize=192; //1100 0000
	            if(byte>=224){bytes=2; bytesize=224; //1110 0000
	            if(byte>=240){bytes=3; bytesize=240; //1111 0000
	            if(byte>=248){bytes=4; bytesize=248; //1111 1000
	            if(byte>=252){bytes=5; bytesize=252; //1111 1100
	            }}}}}
	            if bytes>0 then{
	                bits-=8;
	                char_unicode=(byte-bytesize)<<(6*bytes);
	                for(var e=1;e<=bytes;e++){
	                    char_unicode+=(string_byte_at(str,i+e)+128)<<(6*(bytes-e));
	                }
	                i+=bytes;
	                char_unicode=chr(char_unicode);
	            }else{
	            char_unicode="";
	            }
            
	        }
	        char_width=string_width(string_hash_to_newline(char_unicode));
	        total_width+=char_width;
	        if dots_pos=0 then{
	            if total_width>=width then{
	                dots_pos=i;
	            }else{
	            str_dots+=char_unicode;
	            }
	        }
	        if total_width>width then{
	        return str_dots;}
	        i_last=i;
	    }
	    return str;



}
