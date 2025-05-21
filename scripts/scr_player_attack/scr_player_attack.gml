// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_attack(facing, attack, frames){
	/* var fac = facing;
	var att = attack;
	var fra = frames; */
	
	switch (attack) {
		case 1:
			if (facing == "right") {
				var att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
			} else {
				var att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
			}
			att.attack_count = attack_count;
			att.frames = frames;
			return 2;
		case 2:
			if (facing == "right") {
				var att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
			} else {
				var att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
			}
			att.attack_count = attack_count;
			att.frames = frames;
			return 3;
		case 3:
			if (facing == "right") {
				var att = instance_create_depth(x+32, y, depth-1, obj_hitbox);
			} else {
				var att = instance_create_depth(x-32, y, depth-1, obj_hitbox);	
			}
			att.attack_count = attack_count;
			att.frames = frames;
			return 1;
	}
	
}