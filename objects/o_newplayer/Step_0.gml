/// @description

//player Input
jumpinput = -keyboard_check_pressed(vk_space);
leftinput = keyboard_check(ord("A"));
rightinput = keyboard_check(ord("D"));
crouchinput = keyboard_check(ord("S"));
guninput = mouse_check_button(mb_right);

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
if (rightinput && leftinput) {
	hsp = 0;
}


//jumping
if(canJump & jumpinput){vsp = -jumpheight}

//crouching
if (canJump & crouchinput){
	isCrouching = true;
	hsp = hsp * crouchspeed;
}
else if (place_meeting (x, y-32, o_solid) && sprite_index == s_player_crouch){ 
	isCrouching = true;
	hsp = hsp * crouchspeed;
}
else {
	isCrouching = false;
}

//apply gravity
if !place_meeting (x, y+1, o_solid) {
	vsp += grav; 
}
//collisions
move();

//Gun Mode
if (guninput) {
	gunmode = true;
}
else {
	gunmode = false
}

//change animations ---

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

