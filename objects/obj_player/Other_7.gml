if (state == PLAYER_STATE.ATTACK1) {
	state = PLAYER_STATE.NORMAL;	
}

if (state == PLAYER_STATE.ATTACK2) {
	state = PLAYER_STATE.NORMAL;	
}

if (state == PLAYER_STATE.ATTACK3) {
	state = PLAYER_STATE.NORMAL;	
}

if (state == PLAYER_STATE.HEAL) {
	state = PLAYER_STATE.NORMAL;
	movespd = movespd_init;	
	stopped = false;
}

if (state == PLAYER_STATE.PARRY) {
	state = PLAYER_STATE.NORMAL;
	parrying = false;
}