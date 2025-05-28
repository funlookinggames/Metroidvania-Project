/// @description 
var hitnow  = ds_list_create();
var hits = instance_place_list(x, y, obj_player, hitnow, false);
if (hits > 0) {
	for (var i = 0; i < hits; i++) {
		// If this instance has not yet been hit by this attack
		var hitID = hitnow[| i];
		if (ds_list_find_index(hit, hitID) == -1) {
			ds_list_add(hit, hitID);
			hitID.hp -= damage;
			hitID.flash = 10;
			if (hitID.invulnerable) or (hitID.parrying) {
				if (hitID.parrying) {
					creator.stun -= hitID.parry_stundmg;
					hitID.parry = true;
					instance_destroy();
				}
			} else {
				hitID.state = PLAYER_STATE.HIT;	
			}
		}
	}
}











