///Initialize variables

hspd = 0;
vspd = 0;
grav = GRAVITY;
movespd = 2;
runspd = 1.5;
jumpspeed = 5;

hp = 30;
damage = 0;
stunbar = 0;
damaged = -1;

onfloor = place_meeting(x, y+1, obj_wall);
create_x = x;
create_y = y;

enum ENEMY_STATE {
	IDLE,
	CHASE,
	ALERT,
	COMBAT,
	ATTACK
}

state = ENEMY_STATE.IDLE;











