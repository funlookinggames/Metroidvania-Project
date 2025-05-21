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

attack_count = 1;
maxattack = 3;
facing = "right";

enum ATT_FRAMES {
	FIRST = 10,
	SECOND = 10,
	THIRD = 20
}









