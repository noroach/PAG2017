/// @description fire the curently held gun
/// @param spread, bullet_num, dmg

var spread = argument0;
var bullet_nums = argument1;
var dmg = argument2;

var par_offset = 10;

var shuut_direction = point_direction(x, y, mouse_x, mouse_y);
//check for the guns cooldown
//if (alarm_get(current_selection) <= 0){
	//show_message("boiiiii");
//}


//create if check for gun cooldown
repeat (bullet_nums){
	var bullet = instance_create_depth(x, y, -1, o_bullet);
	bullet.speed = bullet_speed;
	bullet.direction = point_direction(x, y, random_range(mouse_x - spread, mouse_x + spread), random_range(mouse_y - spread, mouse_y + spread));
	bullet.image_angle = bullet.direction;
}


//particle effects
//part_type_direction(global.pt_MuzzleSmoke_copy, shuut_direction-15, shuut_direction+15, 0, 0);
//part_emitter_region(global.ps, global.pe_MuzzleFlare, x + par_offset*dsin(image_angle), x + par_offset*dsin(image_angle), y + par_offset*dcos(image_angle), y + par_offset*dcos(image_angle), ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MuzzleFlare, global.pt_MuzzleFlare, 3);
//part_emitter_region(global.ps, global.pe_MuzzleSmoke_copy,  x, x, y, y, ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MuzzleSmoke_copy, global.pt_MuzzleSmoke_copy, 100);