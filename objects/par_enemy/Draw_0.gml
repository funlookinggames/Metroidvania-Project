/// @description 
if (flash > 0) {
	gpu_set_fog(true, c_white, 0, 0);
} else {
	gpu_set_fog(false, c_white, 0, 0);	
}
draw_self();
gpu_set_fog(false, c_white, 0, 0);	
draw_text(x, y - 32, string(stun));














