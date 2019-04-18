/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18EBD245
/// @DnDArgument : "code" "$(13_10)// Create bullet$(13_10)var temp = instance_create_layer(x, y, "Instances", obj_sword);$(13_10)$(13_10)with(obj_gameController){$(13_10)	numMoves +=1;$(13_10)}$(13_10)"

// Create bullet
var temp = instance_create_layer(x, y, "Instances", obj_sword);

with(obj_gameController){
	numMoves +=1;
}