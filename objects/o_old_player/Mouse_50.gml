/// @description Insert description here
// You can write your code in this editor
if alarm[0] <= 0 {
var dir = point_direction (x,y, mouse_x, mouse_y);
var flipped = (mouse_x > x)*2-1;
var gun_x = x-4*flipped; 
var x_offset = lengthdir_x(20, dir);
var y_offset = lengthdir_y(20, dir);


instance_create_layer(gun_x+x_offset, y-sprite_height/2+y_offset, "Instances", o_bullet);
alarm[0] = bullet_cooldown; 

}