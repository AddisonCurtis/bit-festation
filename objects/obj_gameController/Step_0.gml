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

if(room == roo_arena3){
	if(enemyCount == 0){
		wave3clear = true;
	}
}

//Win
if(wave3clear){
	wave3clear = false;
	show_debug_message("Win!");
	audio_stop_all();
	audio_play_sound(sound_win, 0, 1);
	room_goto(roo_winScreen);
}