/// @description Player Movement
var hinput = keyboard_check(ord("D"))- keyboard_check(ord("A"));

if hinput != 0 {
	hsp += hinput*accel;
	hsp = clamp(hsp,-max_hsp, max_hsp);
} else {
	hsp = lerp(hsp, 0, fric);
}

if !place_meeting (x, y+1, o_solid) {
	vsp += grav; 
} else {
	if keyboard_check_pressed (vk_space) {
		vsp = jheight;
		x_scale = image_xscale * 0.6;
		y_scale = image_yscale *1.5;
	}
}

move(); 

//Check if landing
if place_meeting(x ,y+1, o_solid) && !place_meeting(x, yprevious+1, o_solid){
	x_scale = image_xscale *1.5;
	y_scale = image_yscale * 0.6
}
//Return to normal scale
x_scale = lerp(x_scale, image_xscale, .1)
y_scale = lerp(y_scale, image_yscale, .1)