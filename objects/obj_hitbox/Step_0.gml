/// @description 

if (frames > 0) {
	frames -= .25;
} else {
	creator.state = PLAYER_STATE.NORMAL;
	creator.att = noone;
	creator.attack_count = 0;
	instance_destroy();
}














