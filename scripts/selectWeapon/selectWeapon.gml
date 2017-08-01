/// @description set the arms current wepon
/// @params mouse_events1, mouse_events2

if (argument0)
{
	if(current_selection == 0)
	{
		current_selection = array_length_1d(gun_sprites)-1; //minus one because 0-based indexing
	}
	else 
	{
		current_selection -= 1;
	}
}
else if (argument1)
{
	if(current_selection == array_length_1d(gun_sprites)-1) //minus one because 0-based indexing
	{
		current_selection = 0;
	}
	else 
	{
		current_selection += 1;
	}
}

sprite_index = gun_sprites[current_selection];