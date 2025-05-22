///@description State Machine

switch (state) {
	case STATE.NORMAL:
		scr_player_state_normal();
		break;
	case STATE.ATTACK1:
		scr_player_state_attack1();
		break;
	case STATE.ATTACK2:
		scr_player_state_attack2();
		break;
	case STATE.ATTACK3:
		scr_player_state_attack3();
		break;
}