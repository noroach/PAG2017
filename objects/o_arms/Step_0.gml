/// @description movement, shooting

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
if (body.gunmode && mouse_check_button_pressed(mb_left))
{
	playerFire(gun_spreads[current_selection], gun_bullet_num[current_selection], gun_dmg[current_selection]);
}

