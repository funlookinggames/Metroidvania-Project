/// @description 

if (frames > 0) {
	frames--;
} else {
	creator.state = STATE.NORMAL;
	creator.att = noone;
	creator.attack_count = 0;
	instance_destroy();
}












