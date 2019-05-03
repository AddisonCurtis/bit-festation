/// @description 
var attackRange = 16; //buffer for how far the attack will start compared to player x,y
var enemyTarget = noone;
if(instance_exists(obj_cursor)){
	madeMove=true;
	if(obj_gameController.equipedWeapon == obj_shortSword){
		audio_play_sound(sound_attacc, 0, 0);		
		var slashTemp = instance_create_layer(obj_cursor.x,obj_cursor.y, "Instances", obj_swordSlash);
	}else
	if(obj_gameController.equipedWeapon == obj_magicStaff){
		
		audio_play_sound(sound_attacc, 0, 0);		
		var slashTemp = instance_create_layer(obj_cursor.x,obj_cursor.y, "Instances", obj_magicBlast);
		if(obj_cursor.dir == dir.up){
			slashTemp.slashDir = slashDir.up;
		}else
		if(obj_cursor.dir == dir.down){
			slashTemp.slashDir = slashDir.down;		
		}else
		if(obj_cursor.dir == dir.left){
			slashTemp.slashDir = slashDir.left;		
		}else
		if(obj_cursor.dir == dir.right){
			slashTemp.slashDir = slashDir.right;			
		}
	}
}