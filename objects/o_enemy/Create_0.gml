/// @description Initialize the enemy with necessary states and variables

//standard block size for units in pixels
bs = 32;

//movement variables
hsp = 0;
vsp = 0; 
grav = 0.9;
jumpheight = 12;
can_jump = true;
is_crouching = false;
movespeed = 3;
is_crouched = false;
//current_face_direction = -1;
//sets a patrol route
var ex = x;
lpoint = ex - 64;
rpoint = ex + 64;
current_target_position = rpoint;// just an x variable

//enemy health
max_health = 10;
enemy_health = 10;
pain_threshold = 2; // used for knockouts
is_dead = false;

//perception variables (units in block length)
perception_distance = 10 * bs;
sight_distance = 25 * bs; //how far they can see
effective_range = [1 * bs, 8 * bs]; // should be dictated by gun type

//States
is_idle = true;
in_transit = false;

taking_cover = false;
knocked_out = false;

can_attack = false;
has_target = false;
has_line_of_sight = false;
in_range = false;
attacking = false;


//ARMS
arms = instance_create_depth(x, y, -2, o_enemy_arms);
castTo(self, arms);
