/// @description

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
}

if (hp < 0) {
	instance_destroy();
}

if (damaged >= 0) damaged--;
//var move = 0;

//if (global.player.x < x) {
//	facing = "left";
//} else {
//	facing = "right";	
//}












