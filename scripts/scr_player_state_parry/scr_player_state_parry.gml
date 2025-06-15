function scr_player_state_parry(){
	parrying = true;
	animation = spr_player_parry;
	image_speed = 1;
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
	}
	
	//// Timer
	//if (parry_timer > 0) {
	//	parry_timer--;
	//} else {
	//	state = PLAYER_STATE.NORMAL;
	//	parrying = false;
	//}
	
	hspd = 0;
	
	// Collision 
	scr_collision_code();
}