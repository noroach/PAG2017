///@description updates perception variables, like when the player is close they can hear you and target you

var distance_to_player = distance_to_object(o_newplayer);

// can sense the player
if (distance_to_player < perception_distance  ||  (has_line_of_sight && distance_to_player < sight_distance)){
	has_target = true;
	is_idle = false;
}
else {
	has_target = false;
	is_idle = true;
}

// can they attack?
if (has_target && has_line_of_sight){
	can_attack = true;
}
else{
	can_attack = false;
}

//set in_range variable
if (distance_to_player > effective_range[0] || distance_to_player > effective_range[1]){
	in_range = true;
}
else{
	in_range = false;
}