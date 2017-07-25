/// @description Move Towards Player

var dir = point_direction(x, y, o_player.x, o_player.y);
hsp = lengthdir_x(sp, dir); 
vsp = lengthdir_y(sp, dir);
move(); 