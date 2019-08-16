///uiz_animation_increasecounter(current_count, animationtime)
//returns: a new counter value
//animationtime: the time it takes in seconds to get from 0 to 1.
//an animation counter is a variable that holds the progression of an animation. It is a number between 0 and 1, used as 'factor' for other animation functions.
var cnt = argument0;
cnt+=uiz_sc(argument1);
while(cnt>1){
cnt-=1;
}

return cnt;
