/// @description the actual state machine that determines what the AI is going to do next

//
if (is_dead){
	///@TODO make death script???
	destroy(arms);
	destroy(self);
}
else if(knocked_out){
	//crawl away
}
else{
	if (is_idle){
		//patrol
		var atpoint = pathTo(current_target_position, true);
		//at left point
		if(atpoint && (current_target_position == rpoint)){
			current_target_position = lpoint;
		}
		//at right point
		else if (atpoint && (current_target_position == lpoint)){
			current_target_position = rpoint;
		}
	}
	//this is the same as saying "has_target"
	//meaning the enemy saw you, or percieved you within its "perception distance"
	else{
		//crouch if wounded
		if (taking_cover){
			//crouch 
		}
		
		//if you can attack
		if (can_attack){
			//aim
			arms.image_angle = point_direction(x, y, o_newplayer.x, o_newplayer.y - bs)
			//attack
		}
		else{
			//dont aim
		}
		
		//if not, its because you lost line of sight or you are out of effective range
		if(!in_range){
			//move to effective range
			//current_target_position = o_newplayer.x;
			// if the player is behind us
			var atplayer = false;
			
			if (x > o_newplayer.x){
				atplayer = pathTo(o_newplayer.x + effective_range[1], false);
			}
			else{
				atplayer = pathTo(o_newplayer.x - effective_range[1], false);
			}
		}
	}
}