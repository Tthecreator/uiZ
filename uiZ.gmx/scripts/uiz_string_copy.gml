///uiz_string_copy(string,from,to)
//much alike the normal string_copy function, but this one copies from a position to a position instead of a certain amount of characters after a position.
//uiz_string_copy("hello world",3,5) whould return "llo" since l is the third position and o the fifth
return string_copy(argument0,argument1,argument2-max(1,argument1)+1)
