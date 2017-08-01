/// @description Insert description here
// You can write your code in this editor

//handle arm movement
armMovement();

//weapon switching inputs
var mw_down = mouse_wheel_down();
var mw_up = mouse_wheel_up();

// switch weapons
if (mw_down || mw_up) {
	selectWeapon(mw_down, mw_up);
}

// SOME SCHUUT
if (body.gunmode && mouse_check_button(mb_left))
{
	//schuut
	playerFire();
}