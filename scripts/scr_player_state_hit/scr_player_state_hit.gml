// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_hit(){
	
	animation = spr_player_hurt;
	
	// if hit during a dodge, reset dodge variables
	invulnerable = false;
	dodgespd = dodgestart;
	dodgedecel = .3;
	
	// if hit during a parry, reset parry variables
	parrying = false;
	
	if (not onfloor) {
		vspd += grav;
	}
	
	
	
	
	// knockback
	if (flash = 10) {
		if (facing == "left") {
			hspd = 2;
			vspd = -2;
		} else {
			hspd = -2;
			vspd = -2;
		}
	}
	
	// flash white
	if (flash > 0) {
		flash--;
		if (flash % 5) {
			flashing = !flashing;	
		} else {
			flashing = !flashing;	
		}
	} else {
		state = PLAYER_STATE.NORMAL;
		flashing = false;
	}
	
	scr_collision_code();
}