/// @description
var moves = 0;
moves -= max(keyboard_check_pressed(ord("W")),0); 
moves += max(keyboard_check_pressed(ord("S")),0);

if (moves != 0) 
{
	mpos += moves;
	if (mpos < 0) mpos = array_length_1d(menu)-1; 
	if (mpos > array_length_1d(menu)-1)mpos = 0; 
}
var push; 
push = max(keyboard_check_pressed(vk_enter), 0); 
if (push == 1) menuscript(); 

if (keyboard_check_pressed(vk_escape)&& room != r_main_menu)
{
	room_goto_previous(); 
}

if (room == r_main_menu && keyboard_check_pressed(vk_escape)) 
{
	game_end();
}