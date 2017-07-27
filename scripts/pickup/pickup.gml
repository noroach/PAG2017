/// @param pickupObject
///@description used to pickup ammo and change the players [ammo type]ammo variable count

ammo = argument0;

switch(ammo.type){
	case "pistol":	pistolammo += ammo.count; 
					//show_message("picked up ammo");
					destroy(ammo);
					break;
	case "shotgun":	shotgunammo += ammo.count; 
					//show_message("picked up ammo");
					destroy(ammo);
					break;
	default: 
					show_message("error in pickup ammo type");
					destroy(ammo);
					break;
}
