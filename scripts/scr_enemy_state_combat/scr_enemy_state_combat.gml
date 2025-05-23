// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_combat(){
	var move = 0;
	
	if (not onfloor) {
		vspd += grav;
	}
	
	if (global.player.x < x) {
		facing = "left";
		image_xscale = -1;
	} else {
		facing = "right";
		image_xscale = 1; 
	}
	
	if (distance_to_object(global.player) > 25) {
		if (facing == "left") {
			move = -1;
		} else {
			move = 1;
		}
		att_timer = timer_start; // reset attack timer back to full
	} else {
		move = 0;
		if (att_timer > 0) {
			att_timer--;
		} else {
			state = ENEMY_STATE.ATTACK;	
		}
	}
	
	if (distance_to_object(global.player) > 70) {
		state = ENEMY_STATE.CHASE;
	}
	
	hspd = move * (movespd/2);
	
	if (stun <= 0) {
		state = ENEMY_STATE.STUN;
		scr_knockback(2);
	}
	
	scr_collision_code();
}