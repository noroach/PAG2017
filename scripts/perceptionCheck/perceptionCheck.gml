///@description updates perception variables, like when the player is close they can hear you and target you

// can sense the player
if (abs(o_newplayer.x - self.x) < perception_distance  ||  has_line_of_sight){
	has_target = true;
	is_idle = false;
}
else {
	has_target = false;
	is_idle = true;
}

// can they attack?
/// @TODO needs to be changed based on effective range, the range is an exact number and needs to be an actual range
if (has_target && has_line_of_sight && in_range){
	can_attack = true;
}
else{
	can_attack = false;
}