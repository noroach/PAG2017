///player Movement

//jump check
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


//gun mode
if (guninput) {
	gunmode = true;
	hsp = hsp * gunmodespeed;
}
else {
	gunmode = false
}


//jumping
if(canJump & jumpinput){vsp = -jumpheight}


//crouching
if (canJump & crouchinput){
	isCrouching = true;
	hsp = hsp * crouchspeed;
}
else if (place_meeting (x, y-32, o_solid) && sprite_index == s_player_crouch){ //the check for ceiling clip glitch
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


//MOVE ARMS
//arms.x = x;
//arms.y = y-32;