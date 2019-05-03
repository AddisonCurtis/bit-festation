/// @description Insert description here
// You can write your code in this editor
if(room==roo_winScreen||room==roo_lossScreen){
	room_goto(roo_shop);
	audio_stop_all();
	audio_play_sound(sound_ILLEGAL_SHOP_SONG, 0, 1);
	//reset all variables from "create" screen
	action = false;
	numMoves = 0;
	hp = 100;
	money = 0;
	inventory[0] = obj_shortSword;
	equipedWeapon = obj_shortSword;
	selectedSlot = 0;
	enemyCount = 0;
	wave3clear = false;
}