/// @description 

if (frames > 0) {
	frames--;
} else {
	if (creator.attackfollowup) {
		creator.state = ENEMY_STATE.ATTACK2; 
		creator.sprite_index = spr_skeleton_attack2;
		creator.image_index = 0;
		creator.image_speed = 0;
	} else {
		creator.state = ENEMY_STATE.COMBAT;
	}
	creator.att_timer = creator.timer_start;
	creator.att = noone;
	creator.attack_count = 0;
	instance_destroy();
}












