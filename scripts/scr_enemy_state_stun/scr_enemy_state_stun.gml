// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_stun(){
	sprite_index = spr_skeleton_stun;
	if (not onfloor) {
		vspd += grav;
	} else {
		hspd = 0;
	}
	canflinch = false;
	if (stun >= stun_start) {
		image_speed = .5;
	} else {
		image_index = 0;
		image_speed = 0; 
	}
	
	
	scr_collision_code();
}