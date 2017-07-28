/// @description updates variables that allow the player to operate within thier weapons effective range

/// @TODO currently uses a set distance of effective range... this needs to be changed when weapons are implemented
// as in, effective range should be set by the gun type.
if (distance_to_object(o_newplayer) < effective_range || distance_to_object(o_newplayer) > effective_range){
	in_range = false;
}
else{
	in_range = true;
}