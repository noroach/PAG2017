/// @description Insert description here
// You can write your code in this editor

x = body.x;
y = body.y - 32;


//set image xscale
if (body.image_xscale == -1)
{
	image_xscale = -1;
	image_angle = -resting_angle;
}
else{
	image_xscale = 1;
	image_angle = resting_angle;
}

//set angle if in gun mode
if (body.gunmode)
{
	//counter act the x-scale angle flip glitch
	if (image_xscale == -1){
		image_angle = point_direction (x,y, mouse_x, mouse_y) - 180; // flipped
	}
	else { //otherwise its normal
		image_angle = point_direction (x,y, mouse_x, mouse_y);
	}
}

//set crouching arms offset
if(body.isCrouching){
	y = body.y - 16;
}