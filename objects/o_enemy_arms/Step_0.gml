/// @description Insert description here
// You can write your code in this editor

x = body.x;
y = body.y - 5;


//set image xscale
if (body.image_xscale == -1)
{
	image_xscale = -1;
	//image_angle = -resting_angle;
}
else{
	image_xscale = 1;
	//image_angle = resting_angle;
}