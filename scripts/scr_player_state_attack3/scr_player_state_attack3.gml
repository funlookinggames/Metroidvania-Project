// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack3(){
	// --- Get Input --- 
	scr_player_get_input();
	
	// Check if on floor
	onfloor = place_meeting(x, y+1, obj_wall);
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
	}
	
	
	
	// check if combo-ed
	
}