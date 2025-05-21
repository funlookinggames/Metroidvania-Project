function scr_collision_code(){
	//collision
	if (place_meeting(x+hspd, y, obj_wall)) {
		while(not place_meeting(x+sign(hspd), y, obj_wall)) {
			x += sign(hspd);	
		}
		hspd = 0;
	}
	x += hspd;

	if (place_meeting(x, y+vspd, obj_wall)) {
		while(not place_meeting(x, y+sign(vspd), obj_wall)) {
			y += sign(vspd);	
		}
		vspd = 0;
	}
	y += vspd;
}