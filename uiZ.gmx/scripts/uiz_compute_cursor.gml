///uiz_set_cursor(constant)
if global.uiz_lastmouseis!=global.uiz_mouseis then{
cursor_sprite=-1;
window_set_cursor(cr_none)
switch(global.uiz_mouseis){
case cr_default: if sprite_exists(global.uiz_cr_default) then{cursor_sprite=global.uiz_cr_default;}else{window_set_cursor(cr_default)} break;
case cr_arrow: if sprite_exists(global.uiz_cr_arrow) then{cursor_sprite=global.uiz_cr_arrow;}else{window_set_cursor(cr_arrow)} break;
case cr_cross: if sprite_exists(global.uiz_cr_cross) then{cursor_sprite=global.uiz_cr_cross;}else{window_set_cursor(cr_cross)} break;
case cr_beam: if sprite_exists(global.uiz_cr_beam) then{cursor_sprite=global.uiz_cr_beam;}else{window_set_cursor(cr_beam)} break;

case cr_size_nesw: if sprite_exists(global.uiz_cr_size_nesw) then{cursor_sprite=global.uiz_cr_size_nesw;}else{window_set_cursor(cr_size_nesw)} break;
case cr_size_ns: if sprite_exists(global.uiz_cr_size_ns) then{cursor_sprite=global.uiz_cr_size_ns;}else{window_set_cursor(cr_size_ns)} break;
case cr_size_nwse: if sprite_exists(global.uiz_cr_size_nwse) then{cursor_sprite=global.uiz_cr_size_nwse;}else{window_set_cursor(cr_size_nwse)} break;
case cr_size_we: if sprite_exists(global.uiz_cr_size_we) then{cursor_sprite=global.uiz_cr_size_we;}else{window_set_cursor(cr_size_we)} break;



case cr_uparrow: if sprite_exists(global.uiz_cr_uparrow) then{cursor_sprite=global.uiz_cr_uparrow;}else{window_set_cursor(cr_uparrow)} break;
case cr_hourglass: if sprite_exists(global.uiz_cr_hourglass) then{cursor_sprite=global.uiz_cr_hourglass;}else{window_set_cursor(cr_hourglass)} break;
case cr_drag: if sprite_exists(global.uiz_cr_drag) then{cursor_sprite=global.uiz_cr_drag;}else{window_set_cursor(cr_drag)} break;
case cr_appstart: if sprite_exists(global.uiz_cr_appstart) then{cursor_sprite=global.uiz_cr_appstart;}else{window_set_cursor(cr_appstart)} break;
case cr_handpoint: if sprite_exists(global.uiz_cr_handpoint) then{cursor_sprite=global.uiz_cr_handpoint;}else{window_set_cursor(cr_handpoint)} break;


case cr_size_all: if sprite_exists(global.uiz_cr_size_all) then{cursor_sprite=global.uiz_cr_size_all;}else{window_set_cursor(cr_size_all)} break;



default: if sprite_exists(global.uiz_cr_none) then{cursor_sprite=global.uiz_cr_none;}else{window_set_cursor(cr_none)} break;

}

global.uiz_lastmouseis=global.uiz_mouseis;
}
