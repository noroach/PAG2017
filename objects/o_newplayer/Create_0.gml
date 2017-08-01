/// @description Initilize Player

// horizontal and vertical speed
hsp = 0;
vsp = 0;
//Movement varibles
movespeed = 4;
gunmodespeed = 0.3;
crouchspeed = 0.5;
horizontalfriction = 0.5;
jumpheight = 12;
grav = 0.7;

//Scale Variables
x_scale = image_xscale;
y_scale = image_yscale; 

//states
canJump = true;
isCrouching = false;
canCrouch = false;
gunmode = false;

// ammo counts
pistolammo = 0;
shotgunammo = 0;

//ARMS
arms = instance_create_depth(x, y, -2, o_arms);
castTo(self, arms);


//change somewhere... maybe based on the type of gun held
cursor_sprite = s_sights;

