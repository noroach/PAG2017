/// @description fire the curently held gun
/// @param spread, bullet_num, dmg
if (can_shoot){
	var spread = 8;
	//var bullet_nums = argument1;
	var bullet_nums = 1;
	var dmg = 0;

	var par_offset = 10;

	var shuut_direction = point_direction(x, y, o_newplayer.x, o_newplayer.y - bs);
	//check for the guns cooldown
	//if (alarm_get(current_selection) <= 0){
		//show_message("boiiiii");
	//}


	//create if check for gun cooldown
	repeat (bullet_nums){
		var bullet = instance_create_depth(arms.x, arms.y, -1, o_bullet);
		bullet.shotby = "enemy";
		bullet.speed = 15;
		bullet.direction = point_direction(x, y, random_range(o_newplayer.x - spread, o_newplayer.x + spread), random_range(o_newplayer.y  - bs - spread, o_newplayer.y  - bs + spread));
		bullet.image_angle = bullet.direction;
	}
}