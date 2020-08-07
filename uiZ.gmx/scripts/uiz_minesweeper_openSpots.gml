//when the user clicks an empty spot, reveal all connected spaces
//this uses heavy and dirty recursion, but it's simple and thus likely bug free
var selx=argument0;
var sely=argument1;
if selx>=0 and selx<ds_grid_width(minegrid) and sely>=0 and sely<ds_grid_height(minegrid) {//if in bounds
    var m = minegrid[# selx,sely];
    if (m & 16) == 0 {//unclicked
        minegrid[# selx,sely]=m | 16;
        openings++;
        if (m % 8) == 1 then{//if empty
            uiz_minesweeper_openSpots(selx-1,sely-1);
            uiz_minesweeper_openSpots(selx,sely-1);
            uiz_minesweeper_openSpots(selx+1,sely-1);
            uiz_minesweeper_openSpots(selx+1,sely);
            uiz_minesweeper_openSpots(selx+1,sely+1);
            uiz_minesweeper_openSpots(selx,sely+1);
            uiz_minesweeper_openSpots(selx-1,sely+1);
            uiz_minesweeper_openSpots(selx-1,sely);
        }
    }
    
    
}
