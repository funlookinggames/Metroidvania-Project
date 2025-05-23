// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_knockback(strength){
	
	if (facing == "left") {
		hspd = strength;
		vspd = -strength;
	} else {
		hspd = -strength;
		vspd = -strength;
	}

}