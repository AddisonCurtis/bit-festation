/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25F936C8
/// @DnDArgument : "code" "$(13_10)if(!moving){$(13_10)	moving = true;$(13_10)	targY -= stepSize;$(13_10)	sprite_index = sBlue_Up;	$(13_10)}$(13_10)$(13_10)with(obj_gameController){$(13_10)	numMoves +=1;$(13_10)}"

if(!moving){
	moving = true;
	targY -= stepSize;
	sprite_index = sBlue_Up;	
}

with(obj_gameController){
	numMoves +=1;
}