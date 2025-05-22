// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_chase(){
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
	
	if (facing == "left") {
		move = -1;
	} else {
		move = 1;
	}
	
	if (distance_to_object(global.player) > 200) {
		state = ENEMY_STATE.ALERT;
		alert = 100;
	}
	
	hspd = move * movespd;
	
	
	scr_collision_code();
}