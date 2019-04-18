/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20D373D5
/// @DnDArgument : "code" "if(!moving){$(13_10)	moving = true;$(13_10)	targX -= stepSize;$(13_10)	sprite_index = sBlue_Left;	$(13_10)}$(13_10)with(obj_gameController){$(13_10)	numMoves +=1;$(13_10)}"
if(!moving){
	moving = true;
	targX -= stepSize;
	sprite_index = sBlue_Left;	
}
with(obj_gameController){
	numMoves +=1;
}