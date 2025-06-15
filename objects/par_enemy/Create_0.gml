///Initialize variables

hspd = 0;
vspd = 0;
grav = GRAVITY;
movespd = 2;
runspd = 1.5;
jumpspeed = 5;

hp = 100;
damage = 20;
stunbar = 0;
flash = -1;
stun_start = 50;
stun = stun_start;

timer_start = 60;
att_timer = timer_start;
att = noone;
attack_count = 0;
alert = 100;



onfloor = place_meeting(x, y+1, obj_wall);
create_x = x;
create_y = y;

canflinch = true;

enum ENEMY_STATE {
	IDLE,
	CHASE,
	ALERT,
	COMBAT,
	ATTACK1,
	ATTACK2,
	FLINCH,
	STUN,
	DEATH
}
attackfollowup = false;
laststate = ENEMY_STATE.IDLE;

state = ENEMY_STATE.IDLE;











