/// @description

//player Input
jumpinput = -keyboard_check_pressed(vk_space);
leftinput = keyboard_check(ord("A"));
rightinput = keyboard_check(ord("D"));
crouchinput = keyboard_check(ord("S"));

//player Movement
if (place_meeting (x, y+1, o_solid)){
	canJump = true;
}
else {
	canJump = false
}

// handle movement
if (rightinput) {
	hsp = movespeed;
}
else if (leftinput) {
	hsp = -movespeed;
}
else {
	hsp = hsp * horizontalfriction;
}
 

//jumping
if(canJump & jumpinput){vsp = -jumpheight}

//crouching
if (canJump & crouchinput){
	isCrouching = true;
	hsp = hsp * crouchspeed;
}
else {
	isCrouching = false;
}

//apply gravity
vsp += grav;

//collisions
move();

//change animations ---
if ((abs(hsp) > 0) && !isCrouching){
	sprite_index = s_player_run;
}
else if (isCrouching){
	sprite_index = s_player_crouch;
}
else {
	sprite_index = s_player_idle;
}

