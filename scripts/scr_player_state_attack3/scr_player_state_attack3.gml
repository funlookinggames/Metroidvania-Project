// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack3(){
	// animation
	if (onfloor) {
		animation = spr_player_attack3;
		image_speed = 1;
	}
	
	frames+=.25;
	image_index = frames;
	
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
		state = PLAYER_STATE.NORMAL;
	}

}