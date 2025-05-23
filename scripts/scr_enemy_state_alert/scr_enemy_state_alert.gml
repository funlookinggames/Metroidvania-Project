// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_alert(){
	var move = 0;
	
	if (not onfloor) {
		vspd += grav;
		state = ENEMY_STATE.IDLE;
	}
	

	if (move != 0) {
		image_xscale = move;
	}
	
	if (image_xscale > 0) {
		facing = "right";	
	} else {
		facing = "left";
	}
	
	if (distance_to_object(global.player) < 200) {
		state = ENEMY_STATE.CHASE;
	} 
	
	if (alert <= 0) {
		state = ENEMY_STATE.IDLE;
	} else {
		alert--;
	}
	
	hspd = move * movespd;
	
	scr_collision_code();
}