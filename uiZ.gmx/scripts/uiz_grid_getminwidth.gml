///uiz_grid_getminwidth(grid instance id)
/*
This function gets the minimum width of a grid calculated from all the sizes of the grid you specified.
Xtra frames have no effect on what this script returns.
Returns a value in pixels. 
*/
var g=argument0;
var toleft=g.marginl+g.marginr;
for(var i=0;i<g.gridw;i++){
switch(g.colsizetype[i]){
case px:
toleft+=g.colsize[i]+g.margincellw*2
break;
case dp:
toleft+=g.colsize[i]*uiz_dp+g.margincellw*2
break;
case fc:
toleft+=g.colsize[i]*(g.parent.width-g.marginl-g.marginr)+g.margincellw*2
break;
}
}
return toleft;
