function scr_player_get_input(){
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump_pressed = keyboard_check_pressed(ord("X")) or keyboard_check(ord("K"));
	key_jump = keyboard_check(ord("X")) or keyboard_check(ord("K"));
	key_jump_released = keyboard_check_released(ord("X")) or keyboard_check_released(ord("K"));
	key_attack_pressed = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("J"));
	key_dodge_pressed = keyboard_check_pressed(ord("C")) or keyboard_check_pressed(ord("L"));
	key_parry_pressed = keyboard_check_pressed(ord("V")) or keyboard_check_pressed(ord("Ç"));
	key_heal_pressed = keyboard_check_pressed(vk_control) or keyboard_check_pressed(ord("O"));
	key_run = keyboard_check(vk_shift);
}