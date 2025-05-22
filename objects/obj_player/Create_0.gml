/// @description 

global.player = id;

hspd = 0;
vspd = 0;
grav = GRAVITY;
movespd = 2;
runspd = 1.5;
jumpspeed = 10;

hp = 100;
damage = 10;


onfloor = place_meeting(x, y+1, obj_wall);

jumpbuffer = -1;
coyote = -1; 

attack_count = 0;
maxattack = 3;
facing = "right";
att = noone;

enum ATT_FRAMES {
	FIRST = 25,
	SECOND = 25,
	THIRD = 40
}

// state machine
enum PLAYER_STATE {
	NORMAL,
	ATTACK1,
	ATTACK2,
	ATTACK3
}

state = PLAYER_STATE.NORMAL;








