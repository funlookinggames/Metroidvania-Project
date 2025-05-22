// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_normal(){
	// --- Get Input --- 
	scr_player_get_input();
	

	// --- movement variables ---
	var move = key_right - key_left;
	var run = key_run * runspd;
	onfloor = place_meeting(x, y+1, obj_wall);

	//Direction code
	if (move != 0) {
		if (move > 0) facing = "right";
		if (move < 0) facing = "left";
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

	// Attack code
	if (onfloor) {
		if (key_attack_pressed) {
			switch (attack_count) {
				case 0:
					state = PLAYER_STATE.ATTACK1;
					attack_count++;
					vspd = 0;
					hspd = 0;
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
