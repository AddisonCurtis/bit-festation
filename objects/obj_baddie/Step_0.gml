/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "var b_move = false;$(13_10)with(oPlayer){$(13_10)	if(moving){$(13_10)		b_move = true;$(13_10)    }$(13_10)}$(13_10)$(13_10)if(b_move && distance_to_object(oPlayer) < 150){$(13_10)	// Set Point Direction$(13_10)	direction = point_direction(x,y, oPlayer.x, oPlayer.y);$(13_10)	speed = 1.25;$(13_10)	if (distance_to_object(oPlayer) < 30){$(13_10)		alarm_set(0,30);$(13_10)	   }$(13_10)		$(13_10)	}$(13_10)	else{$(13_10)	speed = 0 ;$(13_10)}$(13_10)$(13_10)"
var b_move = false;
with(oPlayer){
	if(moving){
		b_move = true;
    }
}

if(b_move && distance_to_object(oPlayer) < 150){
	// Set Point Direction
	direction = point_direction(x,y, oPlayer.x, oPlayer.y);
	speed = 1.25;
	if (distance_to_object(oPlayer) < 30){
		alarm_set(0,30);
	   }
		
	}
	else{
	speed = 0 ;
}