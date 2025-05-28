///@description State Machine

// --- Get Input --- 
scr_player_get_input();

// --- Check if on floor ---
onfloor = place_meeting(x, y+1, obj_wall);

switch (state) {
	case PLAYER_STATE.NORMAL:
		scr_player_state_normal();
		break;
	case PLAYER_STATE.ATTACK1:
		scr_player_state_attack1();
		break;
	case PLAYER_STATE.ATTACK2:
		scr_player_state_attack2();
		break;
	case PLAYER_STATE.ATTACK3:
		scr_player_state_attack3();
		break;
	case PLAYER_STATE.HIT:
		scr_player_state_hit();
		break;
	case PLAYER_STATE.DODGE:
		scr_player_state_dodge();
		break;
	case PLAYER_STATE.PARRY:
		scr_player_state_parry(); 
		break;
	case PLAYER_STATE.HEAL: 
		scr_player_state_heal();
		break;
	case PLAYER_STATE.AIR:
		scr_player_state_attack_air();
		break;
}