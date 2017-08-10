/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x, y, o_newplayer.x, o_newplayer.y);
hsp = lengthdir_x(sp, dir); 
vsp += grav;
move();

if(isHittingWall()){
	jump(jumpheight);
}