//change animations ---
var dir = point_direction (x,y, mouse_x, mouse_y);

if (hsp > 0 && !isCrouching && canJump) {
	sprite_index = s_player_run;
	image_xscale = 1;
}
else if (hsp < 0 && !isCrouching && canJump) {
	sprite_index = s_player_run;
	image_xscale = -1;
}
else if (isCrouching){
	sprite_index = s_player_crouch;
	if (leftinput) {
		image_xscale = -1; 
	}
	else if (rightinput){
		image_xscale = 1; 
	}
}
else if (!place_meeting (x, y+1, o_solid)){
	sprite_index = s_player_jump;
}
else {
	sprite_index = s_player_idle;
}