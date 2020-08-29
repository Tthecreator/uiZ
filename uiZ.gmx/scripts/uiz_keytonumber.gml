///uiz_keyToNumber(keyboard_key)
/*
Changes a keyboard key value to a number value.
Allows user to press a number key on his/her keyboard and the key value will be transferred back to a number.
Returns a real value. And a value of -1 if no number key was pressed, else it returns the number.*/
//returns -1 if a not number key is pressed, else it returns a number
if argument0>=48 and argument0<=58 then{return argument0-48;}
if argument0>=96 and argument0<=105 then{return argument0-96;}
return -1;
