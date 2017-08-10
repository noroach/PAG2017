	
if (room == r_main_menu)
{
	switch (mpos) 
	{
		case 0:
		{
			room_goto(r_entrance);
			break;
		}
		case 1:
		{
			room_goto(r_levelselect_menu);
			break;
		}
		case 2:
		{
			room_goto(r_about_menu)
			break;
		}
		case 3:
		{
			game_end(); break;
		}
	}
}

if (room == r_levelselect_menu)
{
	switch (mpos)
	{
		case 0:
		{
			room_goto(r_entrance)
			break;
		}
		case 1:
		{
			room_goto(r_level_one)
			break;
		}
		case 2:
		{
			break;
		}
		case 3:
		{
			break;
		}
	}
}
