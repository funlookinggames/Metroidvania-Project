/// @description

onfloor = place_meeting(x, y+1, obj_wall);

switch (state) {
	case ENEMY_STATE.IDLE:
		scr_enemy_state_idle();
		break;
	case ENEMY_STATE.CHASE: 
		scr_enemy_state_chase();
		break;
	case ENEMY_STATE.ALERT:
		scr_enemy_state_alert();
		break;
	case ENEMY_STATE.COMBAT: 
		scr_enemy_state_combat();
		break;
	case ENEMY_STATE.ATTACK:
		scr_enemy_state_attack();
		break;
	case ENEMY_STATE.STUN:
		scr_enemy_state_stun();
		break;
}

if (stun < stun_start) {
	stun += .1;
}



if (hp < 0) {
	flash = -1;
	instance_destroy();
}

if (flash >= 0) flash--;
//var move = 0;

//if (global.player.x < x) {
//	facing = "left";
//} else {
//	facing = "right";	
//}












