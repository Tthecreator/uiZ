///uiz_pxtovalx(type,pos in px,object)
switch(argument0){
case px: return argument1; break;
case dp: return (argument1/uiz_dp); break;
case fcx: case fc: return (argument1/argument2.parent.width); break;
case fcy: return (argument1/argument2.parent.height); break;
case fcm: return (2*(argument1/argument2.parent.width)); break;
default: return 0; break;
}
