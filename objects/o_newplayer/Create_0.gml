/// @description Initilize Player

//health
player_health = 25;

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



//Generated for GMS2 in Geon FX v0.9.0
//Put this code in Create event

//Creating Particle System
global.ps = part_system_create();
part_system_depth(global.ps, -1);

//Creating Particle Types
//MuzzleFlare
global.pt_MuzzleFlare = part_type_create();
part_type_shape(global.pt_MuzzleFlare, pt_shape_sphere);
part_type_sprite(global.pt_MuzzleFlare, s_circle, 0, 0, 0);
part_type_size(global.pt_MuzzleFlare, 1, 2, 0, 0);
part_type_scale(global.pt_MuzzleFlare, 1, 1);
part_type_orientation(global.pt_MuzzleFlare, 0, 0, 0, 0, 0);
part_type_color3(global.pt_MuzzleFlare, 16777215, 65535, 255);
part_type_alpha3(global.pt_MuzzleFlare, 1, 1, 1);
part_type_blend(global.pt_MuzzleFlare, 1);
part_type_life(global.pt_MuzzleFlare, 5, 10);
part_type_speed(global.pt_MuzzleFlare, 0, 0, 0, 0);
part_type_direction(global.pt_MuzzleFlare, 0, 360, 0, 0);
part_type_gravity(global.pt_MuzzleFlare, 0, 0);

//MuzzleSmoke_copy
global.pt_MuzzleSmoke_copy = part_type_create();
part_type_shape(global.pt_MuzzleSmoke_copy, pt_shape_square);
part_type_sprite(global.pt_MuzzleSmoke_copy, s_square, 0, 0, 0);
part_type_size(global.pt_MuzzleSmoke_copy, 0.10, 0.50, 0, 0);
part_type_scale(global.pt_MuzzleSmoke_copy, 1, 1);
part_type_orientation(global.pt_MuzzleSmoke_copy, 0, 0, 0, 0, 0);
part_type_color3(global.pt_MuzzleSmoke_copy, 12632256, 8421504, 8421504);
part_type_alpha3(global.pt_MuzzleSmoke_copy, 1, 1, 0);
part_type_blend(global.pt_MuzzleSmoke_copy, 0);
part_type_life(global.pt_MuzzleSmoke_copy, 15, 30);
part_type_speed(global.pt_MuzzleSmoke_copy, 4, 9, -1, 0);
part_type_direction(global.pt_MuzzleSmoke_copy, -11, 45, 0, 0);
part_type_gravity(global.pt_MuzzleSmoke_copy, 0.20, 90);  

//Creating Emitters
global.pe_MuzzleFlare = part_emitter_create(global.ps);
global.pe_MuzzleSmoke_copy = part_emitter_create(global.ps);

//Adjusting Emitter positions. Starting Emitter Streams or Bursts.
//xp = x;
//yp = y;
//part_emitter_region(global.ps, global.pe_MuzzleFlare, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MuzzleFlare, global.pt_MuzzleFlare, 3);
//part_emitter_region(global.ps, global.pe_MuzzleSmoke_copy, xp-16, xp+16, yp-16, yp+16, ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MuzzleSmoke_copy, global.pt_MuzzleSmoke_copy, 100);

