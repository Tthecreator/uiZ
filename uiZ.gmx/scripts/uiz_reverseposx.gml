///uiz_reverseposx(value in px,valuetype[px dp or fc])
/*
A more primitive version of uiz_pxtoval x/y. This script doens't need a specified object, but does need to be called from that object.
Script that takes a pos in pixels and reverts it back to value of given type.
Arguments:
0-value in px: the value in pixels you want to convert from.
1-valuetype: what type you want to convert to. px, dp, fc, fcx, fcy are supported.
*/
switch(argument1){
case px:
return argument0;
break;
case dp:
return argument0/uiz_dp
break;
case fc: case fcx:
return argument0/(parent.width-parent.leftframemargin-parent.rightframemargin)
break;
case fcy:
return argument0/(parent.height-parent.topframemargin-parent.bottomframemargin);
break;
default:
return argument0;
break;
}
