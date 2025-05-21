/// @description 

// --- Get Input --- 
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump_pressed = keyboard_check_pressed(ord("X")) or keyboard_check(ord("K"));
key_jump = keyboard_check(ord("X")) or keyboard_check(ord("K"));
key_jump_released = keyboard_check_released(ord("X")) or keyboard_check_released(ord("K"));
key_attack_pressed = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("J"));
key_run = keyboard_check(vk_shift);

// --- movement variables ---
var move = key_right - key_left;
var run = key_run * runspd;
onfloor = place_meeting(x, y+1, obj_wall);

//Direction code
if (move != 0) {
	if (move > 0) facing = "right";
	if (move < 0) facing = "left";
}

// --- movement code ---
hspd = (movespd + run) * move; 

// --- gravity and coyote time --- 
if (not onfloor) {
	vspd += grav;
	if (coyote >= 0) coyote--;
	if (key_jump_released) and (vspd <= -2) vspd = -2;
	if (jumpbuffer >= 0) jumpbuffer--;
} else {
	coyote = 3; // reset coyote time on ground		
}

// --- jump logic ---
if (onfloor) and ((jumpbuffer >= 0) or (key_jump_pressed)) {
	vspd = -jumpspeed * key_jump;
	onfloor = false;
	jumpbuffer = -1;
	coyote = -1;
}

//jump buffer
if (not onfloor) {
	if (key_jump_pressed) jumpbuffer = 10;
}

// --- Coyote jump (if not on ground but recently were) ---
if (coyote >= 0) and (key_jump_pressed) {
	vspd = -jumpspeed;
	onfloor = false;
	jumpbuffer = -1;
	coyote = -1;
}

// Attack code

if (key_attack_pressed) {
	switch (attack_count) {
		case 1:
			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.FIRST);
			break;
		case 2:
			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.SECOND);
			break;
		case 3:
			attack_count = scr_player_attack(facing, attack_count, ATT_FRAMES.THIRD);
			break;
	}
}

// Collision
scr_collision_code();





