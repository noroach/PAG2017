/// @description Create Variables
hsp = 0;
max_hsp = 4; 
vsp = 0; 
max_vsp = 6;
grav = 0.5; 
accel = 1;
jheight = -10;
fric = .3;

//Bullet Cooldown
bullet_cooldown = room_speed/6;
alarm[0] = bullet_cooldown; 

//Scale Variables
x_scale = image_xscale;
y_scale = image_yscale; 

// ammo counts
pistolammo = 0;
shotgunammo = 0;