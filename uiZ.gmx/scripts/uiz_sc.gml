///uiz_sc(time in seconds)
//transfers a time in seconds to the amount you need to increase it per step to reach a value of 1 after x seconds
/*
uiz_sc(time in seconds) 
Transfers a time in seconds to the amount you need to increase it per step to reach a value of 1 after x seconds.
For example, the room_speed is set to 30 meaning it will take 30 steps for one second in real time to go by.
Considering that, it would a counter exactly 1 second to reach a value of one if that timer whould increase by 1/30th every step.
This funcitons gets that value.
This function is extremely usefull for making timers.



Example: 
//create:
count=0 //a counting value
counttime=5 //second
//step:
count+=uiz_sc(counttime)
if count>=1 then{
//run some flashy code
}



In this example it whould take 5 seconds for the "flashy code" to be run no matter what the room_speed whould be. 
*/
//return 1/(argument0*fps)
return ((1/argument0)*(delta_time/1000000))
