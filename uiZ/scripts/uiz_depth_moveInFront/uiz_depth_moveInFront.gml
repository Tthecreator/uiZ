/// @description uiz_depth_moveInFront(instanceid, moveInFront)
/// @param instanceid The instance to move before another instance
/// @param moveInFront The instance to which the first instance should be moved just in front.
function uiz_depth_moveInFront(instanceid, moveInFront) {
	if instance_exists(instanceid) and instance_exists(moveInFront){
		//check for correct preconditions
		if (instanceid.parent != moveInFront.parent){
			sdbm("[uiZ|ERROR] Tried to move object before other object that had no parent");
			return;
		}
		
		if (instanceid == moveInFront){
			sdbm("[uiZ|ERROR] Tried to move object before other object whilte both objects are the same object");
			return;
		}
		
		//make sure depth is already correct before making any changes
		with(instanceid){
		    if uiz_diddepth=false then{
		        uiz_fix_Depth()
		    }
		}
		with(moveInFront){
		    if uiz_diddepth=false then{
		        uiz_fix_Depth()
		    }
		}
		
		//actually do the magic of this function
		//get positions
		posInChildListFrom = instanceid.listpos;
		posInChildListTo = moveInFront.listpos;
		
		if (posInChildListFrom = posInChildListTo+1){//we're already fulfilling this function's post condition.
			return;
		}
		
		var l = instanceid.parent.children;
		var overlapping = false;
		
		//set depth
		instanceid.oldmydepth=instanceid.depth;
		instanceid.depth = moveInFront.depth;//we move it at the same depth, because uiZ allows multiple items to be at the same depth. This function however wants to put the instanceid right behind the moveInFront instance without anything in between.
		
		//sort list
		if (posInChildListFrom < posInChildListTo){//move instanceid up
			for(var i=posInChildListFrom;i<posInChildListTo;i++){
	            if uiz_objectsOverlap(l[|i+1],instanceid){
	                overlapping=true;
	            }
	            l[|i]=l[|i+1];
				l[|i].listpos--;
	        }
			l[|posInChildListTo] = instanceid;
			instanceid.listpos = posInChildListTo;
		}else{
			for(var i=posInChildListFrom;i>posInChildListTo+1;i--){
	            if i!=posInChildListFrom and uiz_objectsOverlap(l[|i],instanceid){
	                overlapping=true;
	            }
	            l[|i]=l[|i-1];
				l[|i].listpos++;
	        }
			l[|posInChildListTo+1] = instanceid;
			instanceid.listpos = posInChildListTo+1;
		}
		
		if uiz_objectsOverlap(moveInFront, instanceid){
	            overlapping=true;
	    }
		
		if overlapping=true then{//items need to be updated when they overlap
	        uiz_updater_FixViews_with(instanceid);
	    }

	}else{
		sdbm("[uiZ|ERROR] Tried to set depth on objects that don't exist!")
	}
}
