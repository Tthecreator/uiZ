///uiz_pxtovaly(type,pos in px,object)
switch(argument0){
case px: return argument1; break;
case dp: return (argument1/uiz_dp); break;
case fcy: case fc: return (argument1/argument2.parent.height); break;
case fcx: return (argument1/argument2.parent.width); break;
case fcm: return (2*(argument1/argument2.parent.height)); break;
default: return 0; break;
}
