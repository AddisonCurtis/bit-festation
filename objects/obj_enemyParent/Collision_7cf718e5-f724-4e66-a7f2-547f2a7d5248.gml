/// @description Insert description here
// You can write your code in this editor
if(!other.damageDealt){	
	show_debug_message("Enemy Health was " + string(baddieHealth) + ". Removing 50 health");
	baddieHealth -= 50;	
	other.damageDealt = true;
}