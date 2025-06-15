// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_heal(){
	var move = key_right - key_left;

	//Direction code
	if (move != 0) {
		if (move > 0) facing = "right";
		if (move < 0) facing = "left";
	}

	if (movespd <= 0) and (!stopped) {
		animation = spr_player_heal;
		image_speed = 1;
		stopped = true;
		frames = 0;
	}

	// --- movement code ---
	if (!stopped){
		hspd = (movespd) * move; 
	} else {
		hspd = 0;
	}
	
	// Gravity
	if (not onfloor) {
		vspd += grav;	
	}
	
	
	// Heal and movement code
	if (hspd >= 0)  {
		movespd -= dodgedecel/2;
	} else {
		movespd = 0;
		if (image_index >= 14) {	
			if (!healed) hp += heal; healed = true;
		}
	}
	
	
	//Collision
	scr_collision_code();
	

}