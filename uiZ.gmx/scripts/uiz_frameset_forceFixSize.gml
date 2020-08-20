///uiz_frameset_forceFixSize(anchor)
//tells an anchor that it needs to recheck the width/height of every frame.
//anchor still needs to be fixed later on.
if argument0.object_index =- obj_uiZ_framecolanchor or argument0.object_index =- obj_uiZ_framerowanchor then{
    argument0.forceFixSize = true
}
