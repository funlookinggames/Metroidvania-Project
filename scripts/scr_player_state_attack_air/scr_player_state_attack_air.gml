// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack_air(){
	// --- movement variables ---
	var move = key_right - key_left;
	var run = key_run * runspd;

	//Direction code
	
	// --- movement code ---
	hspd = (movespd + run) * move; 

	// Gravity
	if (not onfloor) {
		vspd += grav;	
	}
	
	// Create an Attack
	if (att == noone) {
		if (facing == "right") {
			att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
		} else {
			att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
		}
		att.frames = ATT_FRAMES.AIR;
		att.creator = id;
		att.damage = damage;
		att.air = true;
	}
	
	if (onfloor) {
		state = PLAYER_STATE.NORMAL;
		if (att != noone) instance_destroy(att, false);
		att = noone;
		attack_count = 0;
	}
	
	// Collision Code
	scr_collision_code();
}