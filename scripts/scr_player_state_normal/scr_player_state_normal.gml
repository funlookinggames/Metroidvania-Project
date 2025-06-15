function scr_player_state_normal(){
	// --- movement variables ---
	var move = key_right - key_left;
	var run = key_run * runspd;

	//Direction code
	if (move != 0) {
		if (move > 0) facing = "right";
		if (move < 0) facing = "left";
		image_xscale = move;
	}
	
	//Animation	
	if (onfloor) {
		if (move != 0) {
			animation = spr_player_walk; 
			image_speed = (movespd + run)/3;
		} else {
			animation = spr_player_idle;	
		}
	} else {
		animation = spr_player_jump;
		if (vspd < 0) image_index = 0; 
		if (vspd > 0) image_index = 1;
	}
	
	// --- movement code ---
	hspd = (movespd + run) * move; 

	// --- gravity and coyote time --- 
	if (not onfloor) {
		vspd += grav;
		if (coyote >= 0) coyote--;
		if (key_jump_released) and (vspd <= -2) vspd = -2;
		if (jumpbuffer >= 0) jumpbuffer--;
	} else {
		coyote = 3; // reset coyote time on ground		
	}

	// --- jump logic ---
	if (onfloor) and ((jumpbuffer >= 0) or (key_jump_pressed)) {
		vspd = -jumpspeed * key_jump;
		onfloor = false;
		jumpbuffer = -1;
		coyote = -1;
	}

	//jump buffer
	if (not onfloor) {
		if (key_jump_pressed) jumpbuffer = 10;
	}

	// --- Coyote jump (if not on ground but recently were) ---
	if (coyote >= 0) and (key_jump_pressed) {
		vspd = -jumpspeed;
		onfloor = false;
		jumpbuffer = -1;
		coyote = -1;
	}

	// Combat Code
	if (onfloor) {
		
		// Attack Code
		if (key_attack_pressed) {
			switch (attack_count) {
				case 0:
					state = PLAYER_STATE.ATTACK1;
					attack_count++;
					vspd = 0;
					hspd = 0;
					animation = spr_player_attack1;
					frames = 0;
					image_index = 0;
					break;
				case 1:
					state = PLAYER_STATE.ATTACK2;
					attack_count++;
					vspd = 0;
					hspd = 0;
					break;
				case 2:
					state = PLAYER_STATE.ATTACK3;
					attack_count++;
					vspd = 0;
					hspd = 0;
					break;
			}
		}
		
		// Dodge Code
		if (key_dodge_pressed) {
			state = PLAYER_STATE.DODGE;
			dodge_direction = move;
			if (move != 0) {
				dodge_timer = global.gamespd/1.5;
				animation = spr_player_roll;
			} else {
				dodge_timer = global.gamespd/2;
				animation = spr_player_backflip;
			}
			frames = 0;
			hspd *= 2;
		}
		
		// Parry Code
		if (key_parry_pressed) {
			state = PLAYER_STATE.PARRY;
			animation = spr_player_parry;
			image_index = 0;
			image_speed = 0;
			parry_timer = parry_start;
		}
		
		// Heal code
		if (key_heal_pressed) {
			state = PLAYER_STATE.HEAL;
			if (hspd = 0) {
				stopped = true;
				animation = spr_player_heal;
				image_speed = 1;
				stopped = true;
				frames = 0;
				movespd = 0;
			}
			healed = false;
			frames = 0;
		}
		
	// If Not on floor	
	} else {
		if (key_attack_pressed) {
			state = PLAYER_STATE.AIR;
			att = noone;
			
		}
	}
	// Collision
	scr_collision_code();
}

	//if (key_attack_pressed) {
	//	switch (attack_count) {
	//		case 0:
	//			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.FIRST);
	//			break;
	//		case 1:
	//			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.SECOND);
	//			break;
	//		case 2:
	//			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.THIRD);
	//			break;
	//	}
	//}
