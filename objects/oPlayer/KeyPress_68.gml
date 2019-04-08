/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10D9D7C0
/// @DnDArgument : "code" "$(13_10)if(!moving){$(13_10)	moving = true;$(13_10)	targX += stepSize;$(13_10)	sprite_index = sBlue_Right;$(13_10)}$(13_10)$(13_10)with(obj_gameController){$(13_10)	numMoves +=1;$(13_10)}"

if(!moving){
	moving = true;
	targX += stepSize;
	sprite_index = sBlue_Right;
}

with(obj_gameController){
	numMoves +=1;
}