/// @description Draw GUI
draw_set_color(c_olive);
draw_text(5, 5 , "pistol ammo: " + string(pistolammo));
draw_text(5 , 15, "shotgun ammo: " + string(shotgunammo));

draw_text(5, 30 , "can jump: " + string(canJump));
draw_text(5 , 40, "is crouching: " + string(isCrouching));
draw_text(5, 50, "Gunmode: " + string(gunmode));

draw_text(5, 60, "current selection: " + string(arms.current_selection));
