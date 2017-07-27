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
if (has_target){
	can_attack = true;
}
else{
	can_attack = false;
}