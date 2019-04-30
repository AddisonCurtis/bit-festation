/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "if(obj_player.madeMove) {$(13_10)	if (distance_to_object(obj_player) > 30) {$(13_10)		// Set Point Direction$(13_10)		dirRads = point_direction(x,y, obj_player.x, obj_player.y)*pi/180;$(13_10)		vert = sin(dirRads);$(13_10)		hori = cos(dirRads)$(13_10)		if (abs(vert) > abs(hori)) {$(13_10)			tileMove(self, 0, -sign(vert));	$(13_10)		} else {$(13_10)			tileMove(self, sign(hori), 0);$(13_10)		}$(13_10)	} else if (--cooldown == 0) {$(13_10)		cooldown = 2;$(13_10)		var distRange = 17;$(13_10)		if (abs(y - obj_player.y) < distRange && (x - obj_player.x) > 0 && (x - obj_player.x) < distRange){$(13_10)			instance_create_layer(x-15, y, "Instances", obj_enm_attack);$(13_10)		}$(13_10)		else if (abs(y - obj_player.y) < distRange && (x - obj_player.x) < 0 && (x - obj_player.x) > -distRange){$(13_10)			instance_create_layer(x+28, y, "Instances", obj_enm_attack);$(13_10)		}$(13_10)		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) > 0 && (y - obj_player.y) < distRange){$(13_10)			instance_create_layer(x, y-20, "Instances", obj_enm_attack);$(13_10)		}$(13_10)		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) < 0 && (y - obj_player.y) > -distRange){$(13_10)			instance_create_layer(x, y+16, "Instances", obj_enm_attack);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)"
if(obj_player.madeMove) {
	if (distance_to_object(obj_player) > 30) {
		// Set Point Direction
		dirRads = point_direction(x,y, obj_player.x, obj_player.y)*pi/180;
		vert = sin(dirRads);
		hori = cos(dirRads)
		if (abs(vert) > abs(hori)) {
			tileMove(self, 0, -sign(vert));	
		} else {
			tileMove(self, sign(hori), 0);
		}
	} else if (--cooldown == 0) {
		cooldown = 2;
		var distRange = 17;
		if (abs(y - obj_player.y) < distRange && (x - obj_player.x) > 0 && (x - obj_player.x) < distRange){
			instance_create_layer(x-15, y, "Instances", obj_enm_attack);
		}
		else if (abs(y - obj_player.y) < distRange && (x - obj_player.x) < 0 && (x - obj_player.x) > -distRange){
			instance_create_layer(x+28, y, "Instances", obj_enm_attack);
		}
		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) > 0 && (y - obj_player.y) < distRange){
			instance_create_layer(x, y-20, "Instances", obj_enm_attack);
		}
		else if (abs(x - obj_player.x) < distRange && (y - obj_player.y) < 0 && (y - obj_player.y) > -distRange){
			instance_create_layer(x, y+16, "Instances", obj_enm_attack);
		}
	}
}