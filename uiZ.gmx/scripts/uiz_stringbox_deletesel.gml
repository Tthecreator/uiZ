value=string_copy(value,0,selpmin)+string_copy(value,selpmax,len-selpmax+1);
typepos=selpmin+1
hasselection=0
selp1=0
selp2=0
selpmin=0
selpmax=0
if endc>=len then{
endc=max(0,endc-(selpmax-selpmin))
//begc=0
begc=1
for (var i=endc;i>=0;i--){
if sw+string_width(string_copy(value,i,endc-i))>width-margin*2 then{
//sdbm(i,string_copy(value,i,endc-i),sw+string_width(string_copy(value,i,endc-i)))
begc=i+1
break;
}}
}
len=string_length(value)+1
