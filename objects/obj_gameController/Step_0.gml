action = false;
numMoves = 0;

for (var i=0; i<array_length_1d(inventory); i++) {
	if (keyboard_check(ord(string(i+1)))) {
		selectedSlot = i;
		equipedWeapon = inventory[i];
		break;
	}
}

if (hp <= 0 and instance_exists(obj_player)) {
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_deathAnimation);
	instance_destroy(obj_player);
}
