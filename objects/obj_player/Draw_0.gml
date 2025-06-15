/// @description 
if (flashing) {
	gpu_set_fog(true, c_white, 0, 0);
} else {
	gpu_set_fog(false, c_white, 0, 0);	
}
var color = c_white;
var alpha = 1;
//if (invulnerable) alpha = .5;
//if (parrying) color = c_yellow;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, color, alpha);
gpu_set_fog(false, c_white, 0, 0);	

draw_set_halign(fa_middle);
draw_text(x, y-32, string(hp));
if (heal > 0) draw_text(x, y-48, string(key_heal_pressed));

