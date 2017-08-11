/// @description determines health variables

if (enemy_health <= 0){
	is_dead = true;
}
else if (enemy_health < max_health/2){ //enemies take cover below half health
	taking_cover = true;
}
else if (enemy_health > 0 && enemy_health <= pain_threshold){ // enemies are knocked down if they are below threshold 
	knocked_out = true;
}
else {
	knocked_out = false;
	taking_cover = false;
}