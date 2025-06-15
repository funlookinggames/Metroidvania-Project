// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_idle(){
	var move = 0;
	
	if (not onfloor) {
		vspd += grav;
		state = ENEMY_STATE.IDLE;
	} else {
		if (hspd == 0) {
			sprite_index = spr_skeleton_idle;
			image_speed = .25;	
		} else {
			sprite_index = spr_skeleton_run;
			image_speed = .5;
		}
	}
	
	if (distance_to_point(create_x, y) > 30) {
		if (x > create_x) {
			move = -1;	
		} else {
			move = 1;
		}
		
	} else {
		move = 0;	
	}
	
	if (move != 0) {
		image_xscale = move;
	}
	
	if (image_xscale < 0) {
		facing = "right";	
	} else {
		facing = "left";
	}
	
	if (distance_to_object(global.player) < 100) {
		state = ENEMY_STATE.CHASE;
	} else {
		state = ENEMY_STATE.IDLE;	
	}
	
	hspd = move * movespd;
	
	scr_collision_code();
}