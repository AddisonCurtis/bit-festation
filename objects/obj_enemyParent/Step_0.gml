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
	if ((currentCooldown <= 0) && play_dist> 8) {
		currentCooldown = cooldownStart;
		// Set Point Direction
		dirRads = point_direction(x,y, play_x,play_y)*pi/180;
		vert = sin(dirRads);
		hori = cos(dirRads)
		if (abs(vert) > abs(hori)) {
			tileMove(self, 0, -sign(vert));	
		} else {
			tileMove(self, sign(hori), 0);
		}
	} else if (currentCooldown <= 0) {
		currentCooldown = cooldownStart;
		var distRange = 17;
		if (abs(y - play_y) < distRange && (x -play_x) > 0 && (x -play_x) < distRange){
			instance_create_layer(x-16, y, "Instances", obj_enm_attack);
		}
		else if (abs(y - play_y) < distRange && (x - play_x) < 0 && (x - play_x) > -distRange){
			instance_create_layer(x+16, y, "Instances", obj_enm_attack);
		}
		else if (abs(x - play_x) < distRange && (y - play_y) > 0 && (y - play_y) < distRange){
			instance_create_layer(x, y-16, "Instances", obj_enm_attack);
		}
		else if (abs(x - play_x) < distRange && (y - play_y) < 0 && (y - play_y) > -distRange){
			instance_create_layer(x, y+16, "Instances", obj_enm_attack);
		}
	}
}
if(baddieHealth <= 0){
	var bagTemp = instance_create_layer(x,y,"Instances", obj_moneyBag);
	bagTemp.value = moneyDrop;
	instance_destroy(self);	
}