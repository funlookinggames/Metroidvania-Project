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
	case ENEMY_STATE.ATTACK1:
		scr_enemy_state_attack();
		break;
	case ENEMY_STATE.ATTACK2:
		scr_enemy_state_attack2();
		break;
	case ENEMY_STATE.FLINCH:
		scr_enemy_state_flinch();
		break;
	case ENEMY_STATE.STUN:
		scr_enemy_state_stun();
		break;
	case ENEMY_STATE.DEATH:
		sprite_index = spr_skeleton_death;
		image_speed = 1;
		break;
}

if (stun < stun_start) {
	stun += .1;
}

if (distance_to_object(global.player) < 100) {
	var obj = object_is_ancestor(object_index, par_enemy);
	show_debug_message(string(obj))	
}

if (hp < 0) {
	state = ENEMY_STATE.DEATH;
}

if (flash >= 0) flash--;
//var move = 0;

//if (global.player.x < x) {
//	facing = "left";
//} else {
//	facing = "right";	
//}












