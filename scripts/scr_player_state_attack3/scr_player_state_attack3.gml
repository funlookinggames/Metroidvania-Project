// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack3(){
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
		state = PLAYER_STATE.NORMAL;
	}
	
}