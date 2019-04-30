if(obj_player.madeMove) {
	currentCooldown--;
	if ((currentCooldown <= 0) && distance_to_object(obj_player) > 16) {
		currentCooldown = cooldownStart;
		// Set Point Direction
		dirRads = point_direction(x,y, obj_player.x, obj_player.y)*pi/180;
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
		if (abs(y - obj_player.y) < distRange && (x - obj_player.x) > 0 && (x - obj_player.x) < distRange){
			instance_create_layer(x-16, y, "Instances", obj_enm_attack);
		}
		else if (abs(y - obj_player.y) < distRange && (x - obj_player.x) < 0 && (x - obj_player.x) > -distRange){
			instance_create_layer(x+16, y, "Instances", obj_enm_attack);
		}
		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) > 0 && (y - obj_player.y) < distRange){
			instance_create_layer(x, y-16, "Instances", obj_enm_attack);
		}
		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) < 0 && (y - obj_player.y) > -distRange){
			instance_create_layer(x, y+16, "Instances", obj_enm_attack);
		}
	}
}
if(baddieHealth <= 0){
	var bagTemp = instance_create_layer(x,y,"Instances", obj_moneyBag);
	bagTemp.value = moneyDrop;
	instance_destroy(self);	
}