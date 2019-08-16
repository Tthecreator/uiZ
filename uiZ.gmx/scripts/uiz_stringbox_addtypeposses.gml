typepos=min(len,typepos+argument0);
if typepos>endc then{endc=min(endc+argument0,len);
//begc=min(begc+1,len)
//get new beg
for (var i=endc;i>=0;i--){
if sw+string_width(string_copy(value,i,endc-i))>width-margin*2 then{
begc=i+1
break;
}
}
}
