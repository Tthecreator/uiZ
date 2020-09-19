///uiz_returnCharAddon(char, addon)
/*
Gets a character sign like a,e,b,p,i and checks if that character can be combined with an addon like: ',",~,^. If it can, then it will return the combined character
A character like a and an addon " could be combined to ä. The function whould then return ä.
It returns combined character if one exists. If one doesn't exist, then it will return the addon plus the character. (It will return a string of 2 characters).
This function has a lot of rules for a lot of diffrent characters, you can check inside the script itself for more info about them.
*/
var c=argument0
var a=argument1;
switch(a){
case "~":
//if c="a" or c="n" or c="o" or c="A" or c="N" or c="O" then{return 1}//ã, ñ, õ
switch(c){
case "a": return "ã" break;
case "n": return "ñ" break;
case "o": return "õ" break;
case "A": return "Ã" break;
case "N": return "Ñ" break;
case "O": return "Õ" break;
case "ã": return "ã" break;
case "ñ": return "ñ" break;
case "õ": return "õ" break;
case "Ã": return "Ã" break;
case "Ñ": return "Ñ" break;
case "Õ": return "Õ" break;
}
break;
case "@":
//if c="a" or c="A" then{return 1;}//å, Å
switch(c){
case "a": return "å" break;
case "A": return "Å" break;
case "å": return "å" break;
case "Å": return "Å" break;
}
break;
case "&":
//if c="a" or c="A" or c="o" or c="O" or c="s" then{return 1;}//æ, Æ, œ, Œ, ß
switch(c){
case "a": return "æ" break;
case "A": return "Æ" break;
case "o": return "œ" break;
case "O": return "Œ" break;
case "s": return "ß" break;
case "æ": return "æ" break;
case "Æ": return "Æ" break;
case "œ": return "œ" break;
case "Œ": return "Œ" break;
case "ß": return "ß" break;
}
break;
case ",":
//if c="c" or c="C" then{return 1;}//ç, Ç
switch(c){
case "c": return "ç" break;
case "C": return "Ç" break;
case "ç": return "ç" break;
case "Ç": return "Ç" break;
}
break;
case "-":
//if c="d" or c="D" then{return 1;}//ð, Ð
switch(c){
case "c": return "ð" break;
case "C": return "Ð" break;
case "ð": return "ð" break;
case "Ð": return "Ð" break;
}
break;
case "/":
//if c="o" or c="O" then{return 1;}//ø, Ø
switch(c){
case "o": return "ø" break;
case "O": return "Ø" break;
case "ø": return "ø" break;
case "Ø": return "Ø" break;
}
break;
case "'":
switch(c){
case "a": return "á" break;
case "e": return "é" break;
case "o": return "ó" break;
case "i": return "í" break;
case "u": return "ú" break;
case "A": return "Á" break;
case "E": return "É" break;
case "O": return "Ó" break;
case "I": return "Í" break;
case "U": return "Ú" break;
case "y": return "ý" break;
case "Y": return "Ý" break;
case "á": return "á" break;
case "é": return "é" break;
case "ó": return "ó" break;
case "í": return "í" break;
case "ú": return "ú" break;
case "Á": return "Á" break;
case "É": return "É" break;
case "Ó": return "Ó" break;
case "Í": return "Í" break;
case "Ú": return "Ú" break;
case "ý": return "ý" break;
case "Ý": return "Ý" break;
case vk_space: return "'" break;
}
break;
case '"':
switch(c){
case "a": return "ä" break;
case "e": return "ë" break;
case "o": return "ö" break;
case "i": return "ï" break;
case "u": return "ü" break;
case "A": return "Ä" break;
case "E": return "Ë" break;
case "O": return "Ö" break;
case "I": return "Ï" break;
case "U": return "Ü" break;
case "y": return "ÿ" break;
case "Y": return "Ÿ" break;
case "ä": return "ä" break;
case "ë": return "ë" break;
case "ö": return "ö" break;
case "ï": return "ï" break;
case "ü": return "ü" break;
case "Ä": return "Ä" break;
case "Ë": return "Ë" break;
case "Ö": return "Ö" break;
case "Ï": return "Ï" break;
case "Ü": return "Ü" break;
case "ÿ": return "ÿ" break;
case "Ÿ": return "Ÿ" break;
case vk_space: return '"' break;
}
break;
case "^":
switch(c){
case "a": return "â" break;
case "e": return "ê" break;
case "o": return "ô" break;
case "i": return "î" break;
case "u": return "û" break;
case "A": return "Â" break;
case "E": return "Ê" break;
case "O": return "Ô" break;
case "I": return "Î" break;
case "U": return "Û" break;

case "â": return "â" break;
case "ê": return "ê" break;
case "ô": return "ô" break;
case "î": return "î" break;
case "û": return "û" break;
case "Â": return "Â" break;
case "Ê": return "Ê" break;
case "Ô": return "Ô" break;
case "Î": return "Î" break;
case "Û": return "Û" break;
}
break;
case '`':
switch(c){
case "a": return "à" break;
case "e": return "è" break;
case "o": return "ò" break;
case "i": return "ì" break;
case "u": return "ù" break;
case "A": return "À" break;
case "E": return "È" break;
case "O": return "Ò" break;
case "I": return "Ì" break;
case "U": return "Ù" break;
case "c": return "ð" break;
case "C": return "Ð" break;

case "à": return "à" break;
case "è": return "è" break;
case "ò": return "ò" break;
case "ì": return "ì" break;
case "ù": return "ù" break;
case "À": return "À" break;
case "È": return "È" break;
case "Ò": return "Ò" break;
case "Ì": return "Ì" break;
case "Ù": return "Ù" break;
case "ð": return "ð" break;
case "Ð": return "Ð" break;
}
break;
//default:
//sdbm("return the deafult1",a,c)
//return string(a)+string(c);

}


//sdbm("return the deafult2",a,c)
if (a="'" and c="'") or (a='"' and c='"') then{
a=""
}
return string(a)+string(c);
