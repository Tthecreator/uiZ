/// @description uiz_drawdslist_checkview()
///INTERNAL SCRIPT FOR USE BY UIZ
function uiz_drawdslist_checkview() {
	//recheckup the list
	var h=margin;
	var sz=ds_list_size(uselist);
	startlistat=0
	endlistat=sz;
	
	starth=h;
	for(var i=0;i<sz;i++){
	strh=string_height(string_hash_to_newline(string(uselist[| i])))
	if addy+h+strh>0 then{startlistat=i; starth=h break;}
	h+=margin+strh
	}
	h+=margin+strh
	for(var i=startlistat;i<sz;i++){
	strh=string_height(string_hash_to_newline(string(uselist[| i])))
	if addy+h+strh>height then{endlistat=i+1; break;}
	h+=margin+strh
	}
	if addy+starth<0 or addy+h+margin+strh>height and inframe=2 then{inframe=1; //dbm("hi")

	}




}
