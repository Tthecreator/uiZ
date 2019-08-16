///uiz_charisnumberortext(char,addon)
/*
Gets a character sign like a,e,b,p,i and checks if that character can be combined with an addon like: ',",~,^ etc...
A character like a and an addon " could be combined to ä. The function whould then return true.
It returns either true or false.
This function has a lot of rules for a lot of diffrent characters, you can check inside the script itself for more info about them.
If you want the combined character, you can use uiz_returncharaddon(char,addon).
*/
var c=argument0
var a=argument1;
switch(a){
case "~":
if c="a" or c="n" or c="o" or c="A" or c="N" or c="O" then{return 1}//ã, ñ, õ
break;
case "@":
if c="a" or c="A" then{return 1;}//å, Å
break;
case "&":
if c="a" or c="A" or c="o" or c="O" or c="s" then{return 1;}//æ, Æ, œ, Œ, ß
break;
case ",":
if c="c" or c="C" then{return 1;}//ç, Ç
break;
case "-":
if c="d" or c="D" then{return 1;}//ð, Ð
break;
case "/":
if c="o" or c="O" then{return 1;}//ø, Ø
break;
default:
if c="a" or c="e" or c="o" or c="i" or c="u" or 
c="A" or c="E" or c="O" or c="I" or c="U" or 
((c="y" or c="Y") and (a="`" or a='"')) then{return 1;}
break;

}



return 0;
