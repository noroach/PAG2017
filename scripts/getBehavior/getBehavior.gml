/// @description the actual state machine that determines what the AI is going to do next

//
if(knocked_out){
	//crawl away
}
else{
	if (is_idle){
	//patrol
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
			//attack
		}
		
		//if not, its because you lost line of sight or you are out of effective range
		if(!in_range){
			//move to effective range
		}
	}
}