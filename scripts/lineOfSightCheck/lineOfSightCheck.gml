/// @description Updates the AI's line of sight variable

//does a raycast to the player object to see if it's view is obstructed
if collision_line(x, y, o_newplayer.x, o_newplayer.y, o_solid, false, true){
	has_line_of_sight = false;
}
else{
	has_line_of_sight = true;
}
