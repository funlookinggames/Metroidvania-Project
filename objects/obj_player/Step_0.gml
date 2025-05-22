///@description State Machine

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
}