/// @param object
/// @description destroys any object passed into this function as an argument. Useful for ammo pickups
obj = argument0;
with (obj){
	instance_destroy();
}