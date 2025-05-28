function scr_player_state_dodge(){
	if (dodgespd > dodgestart/2) {
		invulnerable = true;
	} else {
		invulnerable = false;
	}
	var move = 0;
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
	}

	// backflip move
	if (dodge_direction == 0) {
		if (facing == "right") dodge_direction = -1;
		if (facing == "left") dodge_direction = 1;
		dodgedecel *= 1.25;
	}
	
	// execute movement
	move = dodge_direction;
	hspd = (dodgespd) * move;
	
	// Dodge de-celeration
	if (dodgespd > 0) dodgespd -= dodgedecel;
	if (dodgespd < 0) dodgespd += dodgedecel;
	show_debug_message(string(dodgespd));
	
	// Dodge timer
	if (dodge_timer > 0) {
		dodge_timer--;	
	} else {
		state = PLAYER_STATE.NORMAL;
		invulnerable = false;
		dodgespd = dodgestart;
		dodgedecel = .3;
	}
	
	// Collision
	scr_collision_code();
}