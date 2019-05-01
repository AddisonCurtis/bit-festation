/// @description Insert description here
// You can write your code in this editor
if(!other.damageDealt){	
	obj_gameController.hp -= 10;
	if(obj_gameController.hp < 0){
	    instance_destroy(obj_player);
		room_goto(roo_lossScreen);
	}
	other.damageDealt = true;
}