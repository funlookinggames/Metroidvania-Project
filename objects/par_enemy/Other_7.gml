

switch (sprite_index) {
	case spr_skeleton_stun:	
		state = ENEMY_STATE.IDLE;
		break;
	case spr_skeleton_attack1:
		state = ENEMY_STATE.COMBAT;
		break;
	case spr_skeleton_attack2:
		state = ENEMY_STATE.COMBAT;
		break;
	case spr_skeleton_hit:
		state = laststate;
		break;
	case spr_skeleton_death:
		instance_create_depth(x, y, depth, obj_skeleton_dead);
		instance_destroy();
		break;
}















