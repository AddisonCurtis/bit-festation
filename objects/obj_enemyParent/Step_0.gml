if (instance_exists(obj_player))
{
	mm = obj_player.madeMove;
	play_x = obj_player.x;
	play_y = obj_player.y;
	play_dist = distance_to_object(obj_player);
}
else{
	mm = false;
	play_x = 0;
	play_y = 0;
	play_dist = 0;
}
if(mm) {
	currentCooldown--;
	show_debug_message("dist: " + string(play_dist));
	if ((currentCooldown <= 0) && play_dist > 3) {
		currentCooldown = cooldownStart;
		// Set Point Direction
		dirRads = point_direction(x,y, play_x,play_y)*pi/180;
		vert = sin(dirRads);
		hori = cos(dirRads)
		show_debug_message("trying to move");
		show_debug_message("vert: " + string(vert));
		show_debug_message("hori: " + string(hori));
		if (abs(vert) > abs(hori)) {
			tileMove(self, 0, -sign(vert));	
		} else {
			tileMove(self, sign(hori), 0);
		}
	} else if (currentCooldown <= 0) {
		currentCooldown = cooldownStart;
		var distRange = 17;
		if (abs(y - play_y) < distRange && (x -play_x) > 0 && (x -play_x) < distRange){
			var tempSlash = instance_create_layer(x-16, y, "Instances", obj_enm_attack);
			tempSlash.damageValue = baddieDamage;
		}
		else if (abs(y - play_y) < distRange && (x - play_x) < 0 && (x - play_x) > -distRange){
			var tempSlash = instance_create_layer(x+16, y, "Instances", obj_enm_attack);
			tempSlash.damageValue = baddieDamage;
		}
		else if (abs(x - play_x) < distRange && (y - play_y) > 0 && (y - play_y) < distRange){
			var tempSlash = instance_create_layer(x, y-16, "Instances", obj_enm_attack);
			tempSlash.damageValue = baddieDamage;
		}
		else if (abs(x - play_x) < distRange && (y - play_y) < 0 && (y - play_y) > -distRange){
			var tempSlash = instance_create_layer(x, y+16, "Instances", obj_enm_attack);
			tempSlash.damageValue = baddieDamage;
		}
	}
}
if(baddieHealth <= 0){
	var bagTemp = instance_create_layer(x,y,"Instances", obj_moneyBag);
	bagTemp.value = moneyDrop;
	instance_destroy(self);	
}