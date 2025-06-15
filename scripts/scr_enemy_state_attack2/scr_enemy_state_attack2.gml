// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_attack2(){

	var move = 0;
	
	image_speed = .5;
	
	if (not onfloor) {
		vspd += grav;
		state = ENEMY_STATE.IDLE;
	}
	if (image_index > 4) {
		if (att == noone) {
			if (facing == "right") {
				att = instance_create_depth(x+32, y-16, depth-1, obj_enemy_hitbox);
			} else {
				att = instance_create_depth(x-32, y-16, depth-1, obj_enemy_hitbox);	
			}
			att.attack_count = attack_count;
			att.frames = 30;
			att.creator = id;
			att.damage = damage;
		}
	}
	
	attackfollowup = false;

	
	hspd = 0;
	
	scr_collision_code();
}
