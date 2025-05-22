/// @description 

hspd = 0;
vspd = 0;
grav = 0.5;
movespd = 2;
runspd = 1.5;
jumpspeed = 10;

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
enum STATE {
	NORMAL,
	ATTACK1,
	ATTACK2,
	ATTACK3
}

state = STATE.NORMAL;








