// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_attack(){
	var move = 0;
	
	if (not onfloor) {
		vspd += grav;
		state = ENEMY_STATE.IDLE;
	}
	
	if (att == noone) {
		if (facing == "right") {
			att = instance_create_depth(x+32, y, depth-1, obj_enemy_hitbox);
		} else {
			att = instance_create_depth(x-32, y, depth-1, obj_enemy_hitbox);	
		}
		att.attack_count = attack_count;
		att.frames = 10;
		att.creator = id;
		att.damage = damage;
	}
	
	hspd = 0;
	
	scr_collision_code();
}