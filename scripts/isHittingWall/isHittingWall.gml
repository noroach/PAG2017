/// @description returns a boolean true or false if the AI unit is about mto collide with a wall

if place_meeting (x + (hsp * 3), y, o_solid){
	//show_message("true");
	return true;
}
else
{
	//show_debug_message("false");
	return false
}