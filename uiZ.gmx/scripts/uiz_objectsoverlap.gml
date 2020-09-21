///uiz_objectsOverlap(instanceid, instanceid)
//checks for 2 objects if they overlap in any way
//returns false for no overlap, 
//returns true for partly or fully overlap
//

//0-rx
//1-ry
//2-rlx
//3-rly
//4-rx
//5-ry
//6-rlx
//7-rly
if argument0.rx>argument1.rlx or argument0.ry>argument1.rly or argument0.rlx<argument1.rx or argument0.rly<argument1.ry
then{return false;}else{
return true;
}
