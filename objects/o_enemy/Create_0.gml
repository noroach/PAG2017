/// @description Initialize the enemy with necessary states and variables

//standard block size for units in pixels
bs = 32;

//movement variables
hsp = 0;
vsp = 0; 
movespeed = 3;

//enemy health
max_health = 10;
enemy_health = 10;
pain_threshold = 2; // used for knockouts

//perception variables (units in block length)
perception_distance = 6 * bs;
effective_range = 1 * bs;

//States
is_idle = true;
in_transit = false;

taking_cover = false;
knocked_out = false;

can_attack = false;
has_target = false;
has_line_of_sight = false;
attacking = false;
