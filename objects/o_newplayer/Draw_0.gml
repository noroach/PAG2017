/// @description draw player and Gun Arms
var dir = point_direction (x,y, mouse_x, mouse_y);
var flipped = (mouse_x > x)*2-1;

//Draw player
draw_self();

//Draw gun in default pose


//draw gun arms in gun mode (following mouse)
if (gunmode)
{
	var dir = point_direction (x,y, mouse_x, mouse_y);
	
	if (isCrouching) 
	{
		draw_sprite_ext(s_player_shoot, 0, x-4*flipped, y-sprite_height/4, 1, flipped, dir, image_blend, image_alpha);
		
	} 
	else {
		draw_sprite_ext(s_player_shoot, 0, x-4*flipped, y-sprite_height/2, 1, flipped, dir, image_blend, image_alpha);
	}
	
}




