/// @description Insert Initialize varibles
menu[0] = "Start"; 
menu[1] = "Level Select";
menu[2] = "About";
menu[3] = "Quit"; 

space = 64;
mpos = 0;

if (room == r_levelselect_menu) 
{
	menu[0] = "Entrance";
	menu[1] = "Level One";
	menu[2] = "Level Two";
	menu[3] = "Level Three"; 
}
if (room == r_about_menu) 
{
	menu[0] = " ";
	menu[1] = " ";
	menu[2] = " ";
	menu[3] = " ";
}
