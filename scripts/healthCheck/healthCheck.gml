/// @description determines health variables

if (enemy_health <= 0){
	// CALL DEATH SCRIPT
	
}
else if (enemy_health > 0 && enemy_health <= pain_threshold){
	knocked_out = true;
}
else {
	knocked_out = false;
}