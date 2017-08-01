/// @description

//player Input
jumpinput = -keyboard_check_pressed(vk_space);
leftinput = keyboard_check(ord("A"));
rightinput = keyboard_check(ord("D"));
crouchinput = keyboard_check(ord("S"));
guninput = mouse_check_button(mb_right);

//player Movement
playerMovement();
changeAnimations();

