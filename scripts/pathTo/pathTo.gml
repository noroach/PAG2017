/// @description paths an AI to an X position
/// @param x_destination is_walking

var destination = argument0;
var walk = argument1;
var ms = 0;
//var dir = point_direction(x, y, o_newplayer.x, o_newplayer.y);


//move style
if(walk == true){
	ms = movespeed / 2;
}
else {
	ms = movespeed;
}

//if we've arrived
if (x < destination + 5 && x > destination - 5){
	hsp = 0;
	return true;
}
else{ // we havent
	if (destination < x){ //moving left
		image_xscale = -1;
		hsp = -ms;
	}
	else{ //moving right
		image_xscale = 1;
		hsp = ms;
	}

	if(isHittingWall() && can_jump){
		jump(jumpheight);
	}
	
	return false;
}