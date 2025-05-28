// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_heal(){
	var move = key_right - key_left;

	//Direction code
	if (move != 0) {
		if (move > 0) facing = "right";
		if (move < 0) facing = "left";
	}

	// --- movement code ---
	hspd = (movespd) * move; 
	
	// Gravity
	if (not onfloor) {
		vspd += grav;	
	}
	
	
	// Heal and movement code
	if (movespd > 0) {
		movespd -= dodgedecel/2;
	} else {
		movespd = 0;
		if (heal < healvalue) {
			heal += .5;	
		} else {
			if (hp + heal < maxhp) {
				hp += heal;
			} else {
				hp = maxhp;	
			}
			state = PLAYER_STATE.NORMAL;
			movespd = movespd_init;
			heal = 0;
		}
	}
	
	
	
	//Collision
	scr_collision_code();
}