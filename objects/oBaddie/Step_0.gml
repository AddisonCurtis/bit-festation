/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "var act = false;$(13_10)with(obj_gameController){$(13_10)	if(numMoves > 0){$(13_10)		act = true;$(13_10)	}$(13_10)}$(13_10)if(act){$(13_10)	$(13_10)	// Set Point Direction$(13_10)	var tempDirection = point_direction(x, y, oPlayer.x, oPlayer.y);$(13_10)	$(13_10)	$(13_10)	x -= 32;	$(13_10)}"
var act = false;
with(obj_gameController){
	if(numMoves > 0){
		act = true;
	}
}
if(act){
	
	// Set Point Direction
	var tempDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
	
	
	x -= 32;	
}