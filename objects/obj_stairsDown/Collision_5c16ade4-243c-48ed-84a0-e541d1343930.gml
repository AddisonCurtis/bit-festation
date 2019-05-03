// TODO: This should have some confirmation that the player wants do go down to the dungeon in the future
//TODO: swap sprite out for actual "up" stairs instead of fake tileset setup.
if(room==roo_shop){
	room_goto(roo_arena1);
}else
if(room==roo_arena1){
	room_goto(roo_arena2);
}else 
if(room==roo_arena2){
	room_goto(roo_arena3);
}else{
	show_debug_message("Unexpected StairDown Condition");
}

audio_stop_all();
audio_play_sound(sound_battle_native, 0, 1);