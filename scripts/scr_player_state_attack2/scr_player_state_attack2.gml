// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_attack2(){
	// --- Get Input --- 
	scr_player_get_input();
	
	// Check if on floor
	onfloor = place_meeting(x, y+1, obj_wall);
	
	// Gravity
	if (not onfloor) {
		vspd += grav;
	}
	
	// create attack
	
	
	// check if combo-ed
	if (key_attack_pressed) {
		switch (attack_count) {
			case 0:
				state = STATE.ATTACK1;
				attack_count++;
				vspd = 0;
				hspd = 0;
				break;
			case 1:
				state = STATE.ATTACK2;
				attack_count++;
				
				if (att != noone) {
					att.attack_count = attack_count;
					att.frames = ATT_FRAMES.SECOND;
					att.creator = id;
				}
				vspd = 0;
				hspd = 0;
	
				break;
			case 2:
				state = STATE.ATTACK3;
				attack_count++;
				if (att != noone) {
					att.attack_count = attack_count;
					att.frames = ATT_FRAMES.THIRD;
					att.creator = id;
				}
				vspd = 0;
				hspd = 0;
				break;
		}
	}
}