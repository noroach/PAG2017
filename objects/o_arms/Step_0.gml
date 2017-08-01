/// @description Insert description here
// You can write your code in this editor

armMovement();

var mw_down = mouse_wheel_down();
var mw_up = mouse_wheel_up();

if (mw_down || mw_up) {
	selectWeapon(mw_down, mw_up);
}