/// @description uiz_frameset_handleExtraOffset(toleftOffset, snaptobarOffset)
/// @param toleftOffset
/// @param  snaptobarOffset
function uiz_frameset_handleExtraOffset(argument0, argument1) {
	var toleftOffset = argument0;
	if toleftOffset != 0 then {
	    var oldToleft = toleft;
	    toleft -= toleftOffset;
    
	    var oldStarsr = starsr;
	    starsr = (toleft / oldToleft) * oldStarsr;
    
	    isize[snaptobar + argument1] += starsr - oldStarsr;
        
	    uiz_frameset_fixAbsorbPixelDiff(argument1);
    
	}




}
