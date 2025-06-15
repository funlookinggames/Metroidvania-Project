/// @description 
var hitnow  = ds_list_create();
var hits = instance_place_list(x, y, par_enemy, hitnow, false);
if (hits > 0) {
	for (var i = 0; i < hits; i++) {
		// If this instance has not yet been hit by this attack
		var hitID = hitnow[| i];
		if (ds_list_find_index(hit, hitID) == -1) {
			ds_list_add(hit, hitID);
			hitID.hp -= damage;
			hitID.flash = 10;
			if (object_is_ancestor(hitID.object_index, par_enemy)) {
				if (hitID.canflinch) {
					hitID.state = ENEMY_STATE.FLINCH;
					hitID.sprite_index = spr_skeleton_hit;
					hitID.image_speed = .0;
					hitID.image_index = 0;
				}
			}
			if (hitID.state != ENEMY_STATE.STUN) hitID.stun -= damage;
		}
	}
}











