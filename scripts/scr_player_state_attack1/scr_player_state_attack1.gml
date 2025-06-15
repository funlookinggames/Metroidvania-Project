// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack1(){
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
		state = PLAYER_STATE.NORMAL;
	}
	
	// animation
	if (onfloor) {
		animation = spr_player_attack1;
		image_speed = 1;
	}
	
	// create attack
	if (att == noone) {
		if (facing == "right") {
			att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
		} else {
			att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
		}
		att.attack_count = attack_count;
		att.frames = ATT_FRAMES.FIRST-.25;
		att.creator = id;
		att.damage = damage;	
	}
	
	frames+=.25;
	image_index = frames;
	
	// check if combo-ed
	if (key_attack_pressed) {
		switch (attack_count) {
			case 0:
				state = PLAYER_STATE.ATTACK1;
				attack_count++;
				vspd = 0;
				hspd = 0;
				frames = 0;
				break;
			case 1:
				state = PLAYER_STATE.ATTACK2;
				attack_count++;
				animation = spr_player_attack2;
				image_speed = 0;
				if (att != noone) {
					instance_destroy(att);
					if (facing == "right") {
						att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
					} else {
						att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
					}
					att.attack_count = attack_count;
					att.frames = ATT_FRAMES.SECOND-.25;
					att.creator = id;
					att.damage = damage/2;
				}
				vspd = 0;
				hspd = 0;
				frames = 0;
				break;
			case 2:
				state = PLAYER_STATE.ATTACK3;
				attack_count++;
				if (att != noone) {
					instance_destroy(att);
					if (facing == "right") {
						att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
					} else {
						att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
					}
					att.attack_count = attack_count;
					att.frames = ATT_FRAMES.THIRD;
					att.creator = id;
					att.damage = damage * 2;
				}
				vspd = 0;
				hspd = 0;
				frames = 0;
				break;
		}
	}

	// collision
	scr_collision_code();
}