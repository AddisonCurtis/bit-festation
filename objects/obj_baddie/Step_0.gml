/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "if(obj_player.madeMove) {$(13_10)	if (distance_to_object(obj_player) > 30) {$(13_10)		// Set Point Direction$(13_10)		dirRads = point_direction(x,y, obj_player.x, obj_player.y)*pi/180;$(13_10)		vert = sin(dirRads);$(13_10)		hori = cos(dirRads)$(13_10)		if (abs(vert) > abs(hori)) {$(13_10)			tileMove(self, 0, -sign(vert));	$(13_10)		} else {$(13_10)			tileMove(self, sign(hori), 0);$(13_10)		}$(13_10)	} else if (--cooldown == 0) {$(13_10)		cooldown = 3;$(13_10)		instance_create_layer(x, y, "Instances", obj_enm_sword);$(13_10)	}$(13_10)}$(13_10)$(13_10)"
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
		cooldown = 3;
		instance_create_layer(x, y, "Instances", obj_enm_sword);
	}
}