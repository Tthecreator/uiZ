endc=min(endc+1,len);
//get new beg
for (var i=endc;i>=0;i--){
if sw+string_width(string_copy(value,i,endc-i))>width-margin*2 then{
begc=i+1
break;
}
}


