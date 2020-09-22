function uiz_resizegridcolframes(argument0) {
	/*
	The functions "uiz_resizegridframes", "uiz_resizegridrowframes" and "uiz_resizegridcolframes" are the "fixing" scripts of grid structures.
	The "uiz_resizegridframes" is a combinations of the "row" and "col" scripts.
	Also handled by uiz_fixgeneralpos.
	*/
	var w;
	var g=argument0;
	g.starsr=0
	if g.marginsonsideslr=false then{
	var ssf=(g.width+g.margincellw*2)//*((g.margincellw*(g.gridw*2))/(g.margincellw*(g.gridw*2-2)))
	}else{var ssf=g.width;}
	var toleft=ssf-g.marginl-g.marginr
	for(var i=0;i<g.gridw;i++){
	switch(g.colsizetype[i]){
	case px:
	g.rh[i]=g.colsize[i]+g.margincellw*2
	toleft-=g.rh[i]
	break;
	case dp:
	g.rh[i]=g.colsize[i]*uiz_dp+g.margincellw*2
	toleft-=g.rh[i]
	break;
	case fc:
	g.rh[i]=g.colsize[i]*(ssf-g.marginr-g.marginl)+g.margincellw*2
	toleft-=g.rh[i]
	break;
	case xtra:
	g.starsr+=g.colsize[i]
	//show_message(g.starsr)
	break;
	}

	}


	if g.starsr>0 then{
	if toleft>0 then{
	for(var i=0;i<g.gridw;i++){
	if g.colsizetype[i]=xtra then{
	g.rh[i]=(toleft/g.starsr)*g.colsize[i];
	//show_message("toleft: "+string(toleft)+"#g.starsr: "+string(g.starsr)+"#g.colsize[i]: "+string(g.colsize[i])+"#g.rh[i]: "+string(g.rh[i]))
	}
	}
	}else{
	//if toleft<=0
	for(var i=0;i<g.gridw;i++){
	g.rh[i]=0
	}
	}
	}


	if toleft<0 then{
	var factor=(ssf-g.marginl-g.marginr)/(ssf-g.marginl-g.marginr-toleft)
	for(var i=0;i<g.gridw;i++){g.rh[i]*=factor}
	}
	//really set the objects
	var at=g.marginl
	for(var i=0;i<g.gridw;i++){
	//var framew=((g.parent.width-g.marginl-g.marginr)/g.gridw);

	if g.marginsonsideslr=false and (i=0 or i=g.gridw-1) then{var domar=0
	if i=g.gridw-1 then{var domarright=g.margincellw;}else{var domarright=0}
	//if i=0 then{
	}else{var domar=g.margincellw; var domarright=domar;}
	if g.marginsonsideslr=false and i=0 then{var domarleft=0}else{var domarleft=g.margincellw}
	at1=at
	at+=g.rh[i]//-g.margincellw*2
	at2=g.rh[i]-g.margincellw*2
	//show_message(at)
	//at+=g.margincellw*2
	var last=-10;
	for(var e=0;e<g.gridh;e++){
	var o=g.gridobject[i,e];
	if o!=last then{
	if o.iscover=0 or o.fromx=i then{o.x=round(at1+domarright-domarleft) o.width=-domar}
	if o.iscover=1 then{o.width+=at2+domar*2
	if o.tox=i then{o.width-=domar}}
	if o.iscover=0 then{o.width=at2}
	o.width = round(o.width);
	uiz_fixgeneralpos(g.gridobject[i,e])
	uiz_fixChildren(g.gridobject[i,e],0)
	last=o
	}
	}
	}



}
