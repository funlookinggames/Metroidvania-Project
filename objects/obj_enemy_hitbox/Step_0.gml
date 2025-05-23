/// @description 

if (frames > 0) {
	frames--;
} else {
	creator.state = ENEMY_STATE.COMBAT;
	creator.att_timer = creator.timer_start;
	creator.att = noone;
	creator.attack_count = 0;
	instance_destroy();
}












