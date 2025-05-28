/// @description 

global.player = id;
global.gamespd = game_get_speed(gamespeed_fps);


// Movement variables
hspd = 0;
vspd = 0;
grav = GRAVITY;
movespd_init = 2;
movespd = movespd_init;
runspd = 1.5;
jumpspeed = 10;

jumpbuffer = -1;
coyote = -1; 

onfloor = place_meeting(x, y+1, obj_wall);

// Dodge Variables
invulnerable = false;
dodge_direction = 1;
dodge_timer = 0;
dodgestart = 6;
dodgespd = dodgestart;
dodgedecel = .3;

// Parry variables
parrying = false;
parry = true;
parry_stundmg = 100;
parry_start = 5;
parry_timer = parry_start;

// Healing variables
heal = 0;
healvalue = 30;

// Main Balance Variables;
maxhp = 100;
hp = 100;
damage = 10;

// Attack variables
attack_count = 0;
maxattack = 3;
facing = "right";
att = noone;
flash = -1;
flashing = false;

enum ATT_FRAMES {
	FIRST = 15,
	SECOND = 15,
	THIRD = 30,
	AIR = 15
}

// state machine
enum PLAYER_STATE {
	NORMAL,
	ATTACK1,
	ATTACK2,
	ATTACK3,
	HIT,
	DODGE,
	PARRY,
	AIR,
	HEAL
}

state = PLAYER_STATE.NORMAL;








