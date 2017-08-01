/// @description Insert description here
// You can write your code in this editor

x = body.x;
y = body.y - 32;

//set angle if in gun mode
if (body.gunmode)
{
	image_angle = point_direction (x,y, mouse_x, mouse_y);
}
else{
	image_angle = image_angle - resting_angle;
}


//set image xscale
image_xscale = body.image_xscale;
//image_yscale = body.image_xscale;

//set crouching arms offset
if(body.isCrouching){
	y = body.y - 16;
}