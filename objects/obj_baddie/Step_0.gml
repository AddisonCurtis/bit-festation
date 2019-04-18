/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "var b_move = false;$(13_10)with(obj_player){$(13_10)	if(keyDown){$(13_10)		b_move = true;$(13_10)    }$(13_10)}$(13_10)$(13_10)if(b_move && distance_to_object(obj_player) < 150){$(13_10)	// Set Point Direction$(13_10)	direction = point_direction(x,y, obj_player.x, obj_player.y);$(13_10)	speed = 1;$(13_10)	if (distance_to_object(obj_player) < 30){$(13_10)		alarm_set(0,30);$(13_10)	   }$(13_10)		$(13_10)	}$(13_10)	else{$(13_10)	speed = 0 ;$(13_10)}$(13_10)$(13_10)"
var b_move = false;
with(obj_player){
	if(keyDown){
		b_move = true;
    }
}

if(b_move && distance_to_object(obj_player) < 150){
	// Set Point Direction
	direction = point_direction(x,y, obj_player.x, obj_player.y);
	speed = 1;
	if (distance_to_object(obj_player) < 30){
		alarm_set(0,30);
	   }
		
	}
	else{
	speed = 0 ;
}