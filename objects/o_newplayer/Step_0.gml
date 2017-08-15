/// @description check health and input mappings

//health check
if (player_health <= 0){
	///you cannot destroy the object outright. The AI will crash the game
	//destroy(arms);
	//destroy(self);
}
else{
	//player Input
	jumpinput = -keyboard_check_pressed(vk_space);
	leftinput = keyboard_check(ord("A"));
	rightinput = keyboard_check(ord("D"));
	crouchinput = keyboard_check(ord("S"));
	guninput = mouse_check_button(mb_right);

	//player Movement
	playerMovement();
	changeAnimations();
}

