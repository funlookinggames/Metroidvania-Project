// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_flinch(){
	if (not onfloor) {
		vspd += GRAVITY;	
	}
	sprite_index = spr_skeleton_hit;
	image_speed = 1;
	
	if (att_timer > 0) att_timer--;
	
	hspd = 0;
	
	scr_collision_code();
}