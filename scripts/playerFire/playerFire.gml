/// @description fire the curently held gun
/// @param spread, bullet_num, dmg

var spread = argument0;
var bullet_nums = argument1;
var dmg = argument2;

//check for the guns cooldown
//if (alarm_get(current_selection) <= 0){
	//show_message("boiiiii");
//}


//create if check for gun cooldown
repeat (bullet_nums){
	var bullet = instance_create_depth(x, y, -1, o_bullet);
	bullet.speed = bullet_speed;
	bullet.direction = point_direction(x, y, random_range(mouse_x - spread, mouse_x + spread), random_range(mouse_y - spread, mouse_y + spread))
	bullet.image_angle = bullet.direction;
}
