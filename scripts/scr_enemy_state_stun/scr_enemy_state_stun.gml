// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_stun(){
	
	if (not onfloor) {
		vspd += grav;
	} else {
		hspd = 0;
	}
	
	if (stun >= stun_start) {
		state = ENEMY_STATE.ALERT;	
	}
	
	
	scr_collision_code();
}